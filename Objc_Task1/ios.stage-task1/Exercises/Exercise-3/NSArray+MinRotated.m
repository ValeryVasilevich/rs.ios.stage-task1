#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count != 0) {
        NSInteger left = 0;
        NSInteger right = self.count - 1;

        // If the array is not rotated at all (already sorted), return the first element
        if ([self[left] compare:self[right]] != NSOrderedDescending) {
            return self[left];
        }

        while (left <= right) {
            // Find the middle index
            NSInteger middle = left + (right - left) / 2;

            // Handle cases where middle is at the boundaries
            if (middle > 0 && [self[middle] compare:self[middle - 1]] == NSOrderedAscending) {
                return self[middle]; // middle is the smallest element
            }
            if (middle < self.count - 1 && [self[middle] compare:self[middle + 1]] == NSOrderedDescending) {
                return self[middle + 1]; // middle+1 is the smallest element
            }

            // Decide which half of the array to search
            if ([self[middle] compare:self[right]] == NSOrderedDescending) {
                // smallest value is on the right side of middle
                left = middle + 1;
            } else {
                // smallest value is on the left side of middle
                right = middle - 1;
            }
        }
        return self[left];
    }
    return nil;
}

@end
