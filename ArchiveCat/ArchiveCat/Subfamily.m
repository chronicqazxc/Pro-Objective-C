//
//  Subfamily.m
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Subfamily.h"

@implementation Subfamily
- (id)initWithSpecies:(NSString *)species genus:(NSString *)genus family:(NSString *)family order:(NSString *)order {
    if ((self = [super initWithFamily:family order:order])) {
        _species = species;
        _genus = genus;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        _species = [aDecoder decodeObjectForKey:@"SPECIES_KEY"];
        _genus = [aDecoder decodeObjectForKey:@"GENUS_KEY"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.species forKey:@"SPECIES_KEY"];
    [aCoder encodeObject:self.genus forKey:@"GENUS_KEY"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Animal - Species:%@ Genus:%@, %@", self.species, self.genus, [super description]];
}
@end
