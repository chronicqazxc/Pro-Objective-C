//
//  BasicGreeter.m
//  DynaLoader
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "BasicGreeter.h"

@implementation BasicGreeter
- (NSString *)greeting:(NSString *)salutation {
    return [NSString stringWithFormat:@"%@, World", salutation];
}
@end
