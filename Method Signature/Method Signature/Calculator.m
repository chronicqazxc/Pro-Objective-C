//
//  Calculator.m
//  Method Signature
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Calculator.h"
#import <objc/runtime.h>

@implementation Calculator
- (NSNumber *)sumAddend1:(NSNumber *)adder1 addend2:(NSNumber *)adder2 {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}

- (NSNumber *)sumAddend1:(NSNumber *)adder1 :(NSNumber *)adder2 {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString *methodString = NSStringFromSelector(sel);
    if ([methodString hasPrefix:@"absoluteValue"]) {
        class_addMethod([self class], sel, (IMP)absoluteValue, "@@:@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

id absoluteValue(id self, SEL _cmd, id value) {
    NSInteger intValue = [value integerValue];
    if (intValue < 0) {
        return @(intValue * -1);
    }
    return value;
}
@end
