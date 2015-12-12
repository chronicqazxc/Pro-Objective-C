//
//  Order.m
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Order.h"

@implementation Order
- (id)initWithOrder:(NSString *)order {
    if ((self = [super init])) {
        _order = order;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super init])) {
        _order = [aDecoder decodeObjectForKey:@"ORDER_KEY"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.order forKey:@"ORDER_KEY"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Order:%@", self.order];
}
@end
