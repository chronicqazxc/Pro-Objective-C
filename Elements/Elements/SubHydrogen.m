//
//  SubHydrogen.m
//  Elements
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "SubHydrogen.h"

@implementation SubHydrogen
+ (id)subHydrongen:(NSUInteger)subHydrogen {
    return [self hydrogenWithNeutrons:subHydrogen];
}

- (id)initWithNeutrons:(NSUInteger)neutrons {
    if ((self = [super init])) {
        _chemicalElement = @"SubHydrogen";
        _atomicSymbol = @"SH";
        _protons = 2;
        _neutrons = neutrons;
    }
    return self;
}
@end
