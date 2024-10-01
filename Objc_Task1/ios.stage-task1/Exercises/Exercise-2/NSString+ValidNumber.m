#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)
- (BOOL)isValidNumber {
    if (self.length < 0 && self.length > 100 ) {
        return NO;
    }
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]+$" options:0 error:&error];

    if (error) {
        NSLog(@"Error creating regex: %@", [error localizedDescription]);
        return NO;
    }

    NSInteger matches = [regex numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];

    return matches > 0;
}

@end
