#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count != 0) {
        NSInteger left = 0;
        NSInteger right = self.count - 1;

        if ([self[left] compare:self[right]] != NSOrderedDescending) {
            return self[left];
        }

        while (left <= right) {
            NSInteger middle = left + (right - left) / 2;

            // Handle cases where middle is at the boundaries
            if (middle > 0 && [self[middle] compare:self[middle - 1]] == NSOrderedAscending) {
                return self[middle];
            }
            if (middle < self.count - 1 && [self[middle] compare:self[middle + 1]] == NSOrderedDescending) {
                return self[middle + 1];
            }

            // Decide which half of the array to search
            if ([self[middle] compare:self[right]] == NSOrderedDescending) {
                left = middle + 1;
            } else {
                right = middle - 1;
            }
        }
        return self[left];
    }
    return nil;
}

@end
