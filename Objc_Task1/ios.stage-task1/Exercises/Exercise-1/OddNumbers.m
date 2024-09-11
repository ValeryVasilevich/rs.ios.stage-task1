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
    if (array != nil) {
        NSInteger count = 0;
        for (NSNumber *item in array) {
            if (item.integerValue %2 != 0) {
                count += 1;
            }
        }
        return count;
    } else {
        return 0;
    }
}

@end
