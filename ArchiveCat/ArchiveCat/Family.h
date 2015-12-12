//
//  Family.h
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Order.h"

@interface Family : Order
@property (nonatomic, readonly) NSString *family;
- (id)initWithFamily:(NSString *)family order:(NSString *)order;
@end
