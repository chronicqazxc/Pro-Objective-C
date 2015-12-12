//
//  Subfamily.h
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Family.h"

@interface Subfamily : Family
@property (nonatomic, readonly) NSString *genus;
@property (nonatomic, readonly) NSString *species;
- (id)initWithSpecies:(NSString *)species genus:(NSString *)genus family:(NSString *)family order:(NSString *)order;
@end
