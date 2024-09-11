#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)
- (BOOL)isValidNumber {
    if (self.length <= 100 && self.length > 0) {
        NSError *error = nil;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]+$" options:0 error:&error];

        if (error) {
            NSLog(@"Error creating regex: %@", [error localizedDescription]);
            return NO;
        }

        NSInteger matches = [regex numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];

        return matches > 0;
    }
    return false;
}

@end
