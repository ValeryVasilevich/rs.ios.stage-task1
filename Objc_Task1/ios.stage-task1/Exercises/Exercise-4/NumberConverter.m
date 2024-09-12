#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    // If the input number is nil, return an empty array
    if (!number) {
        return @[];
    }

    NSString *numberString = [[number stringValue] stringByReplacingOccurrencesOfString:@"-" withString:@""];

    NSMutableArray<NSString *> *charArray = [NSMutableArray arrayWithCapacity:numberString.length];

    for (NSInteger i = 0; i < numberString.length; i++) {
        NSString *charValue = [NSString stringWithFormat:@"%C", [numberString characterAtIndex:i]];
        [charArray addObject:charValue];
    }

    NSArray<NSString *> *reversedArray = [[charArray reverseObjectEnumerator] allObjects];

    return reversedArray;
}

@end
