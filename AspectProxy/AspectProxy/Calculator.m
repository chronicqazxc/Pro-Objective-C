//
//  Calculator.m
//  Calculator
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
+ (void)initialize {
    NSLog(@"%@ initialize", [self className]);
}


- (NSNumber *)sumAddend1:(NSNumber *)adder1 addend2:(NSNumber *)adder2 {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}

- (NSNumber *)sumAddend1:(NSNumber *)adder1 :(NSNumber *)adder2 {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}
@end
