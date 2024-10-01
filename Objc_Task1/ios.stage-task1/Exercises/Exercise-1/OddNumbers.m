//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    if (!array) {
        return 0;
    }
    NSInteger count = 0;
    for (NSNumber *item in array) {
        if (item.integerValue %2 != 0) {
            count ++;
        }
    }
    return count;
}

@end
