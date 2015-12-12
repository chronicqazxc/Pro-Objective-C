//
//  Family.m
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Family.h"

@implementation Family
- (id)initWithFamily:(NSString *)family order:(NSString *)order {
    if ((self = [super initWithOrder:order])) {
        _family = family;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        _family = [aDecoder decodeObjectForKey:@"FAMILY_KEY"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.family forKey:@"FAMILY_KEY"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Family:%@, %@", self.family, [super description]];
}
@end
