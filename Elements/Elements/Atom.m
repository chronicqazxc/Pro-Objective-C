//
//  Atom.m
//  Elements
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Atom.h"

@implementation Atom
- (id)init {
    if ((self = [super init])) {
        _chemicalElement = @"None";
    }
    return self;
}

- (NSUInteger)massNumber {
    return 0;
}
@end
