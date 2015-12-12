//
//  main.m
//  AspectProxy
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AspectProxy.h"
#import "AuditingInvoker.h"
#import "Calculator.h"
#import "CC.h"
#import "DD.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *addend1 = [NSNumber numberWithInteger:-25];
        NSNumber *addend2 = [NSNumber numberWithInteger:10];
        NSNumber *addend3 = [NSNumber numberWithInteger:15];
        
        NSValue *selValue1 = [NSValue valueWithPointer:@selector(sumAddend1:addend2:)];
        NSArray *selValues = @[selValue1];
        AuditingInvoker *invoker = [[AuditingInvoker alloc] init];
//        Calculator *calculator = [Calculator new];
//        id calculatorProxy = [[AspectProxy alloc] initWithObject:calculator selectors:selValues andInvoker:invoker];
        
//        [calculatorProxy sumAddend1:addend1 addend2:addend2];
        
//        [calculatorProxy sumAddend1:addend2 :addend3];
        
//        [calculatorProxy registerSelector:@selector(sumAddend1::)];
//        [calculatorProxy sumAddend1:addend1 :addend3];
        
        CC *cc = [CC new];
        DD *dd = [DD new];
        cc.aName = @"CC";
        dd.aName = @"DD";
        
        NSArray *arr = @[cc, dd];
        
        NSPredicate *betweenPredicate = [NSPredicate predicateWithFormat: @"self.aName == %@", @"CC"];
        NSArray *filteredArray = [arr filteredArrayUsingPredicate:betweenPredicate];
        NSLog(@"arr:%@", filteredArray);

    }
    return 0;
}
