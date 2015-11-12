//
//  Hydrogen.m
//  Elements
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Hydrogen.h"
#import "HydrogenHelper.h"

@implementation Hydrogen {
@private HydrogenHelper *helper;
}
- (id)initWithNeutrons:(NSUInteger)neutrons {
    if ((self = [super init])) {
        _chemicalElement = @"Hydrongen";
        _atomicSymbol = @"H";
        _protons = 1;
        _neutrons = neutrons;
        helper = [[HydrogenHelper alloc] init];
    }
    return self;
}

+ (id)hydrogenWithNeutrons:(NSUInteger)neutrons {
    return [[[self class] alloc] initWithNeutrons:neutrons];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([helper respondsToSelector:aSelector]) {
        return helper;
    }
    return nil;
}
@end
