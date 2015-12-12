//
//  Order.h
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Order : NSObject <NSCoding>
@property (nonatomic, readonly) NSString *order;
- (id)initWithOrder:(NSString *)order;
@end
