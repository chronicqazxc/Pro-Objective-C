//
//  CustomGreeter.m
//  CustomGreeter
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "CustomGreeter.h"

@implementation CustomGreeter
- (NSString *)greeting:(NSString *)salutation {
    return [NSString stringWithFormat:@"%@, Universe!", salutation];
}
@end
