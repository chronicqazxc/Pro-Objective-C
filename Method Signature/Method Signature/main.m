//
//  main.m
//  Method Signature
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];
        NSNumber *addend1 = @25;
        NSNumber *addend2 = @10;
        NSNumber *addend3 = @15;
        NSLog(@"Sum of %@ + %@ = %@", addend1, addend2, [calculator sumAddend1:addend1 addend2:addend2]);
        NSLog(@"Sum of %@ + %@ = %@", addend1, addend3, [calculator sumAddend1:addend1 :addend3]);
        
        SEL selector3 = NSSelectorFromString(@"absoluteValue:");
        NSLog(@"Invoking instance method %@ on object of class %@", NSStringFromSelector(selector3), [Calculator className]);
        id sum3 = [calculator performSelector:selector3 withObject:@-3];
        NSLog(@"Absolute value of %@ = %@", @-3, sum3);
    }
    return 0;
}
