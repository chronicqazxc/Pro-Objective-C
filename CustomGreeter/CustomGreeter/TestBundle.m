//
//  TestBundle.m
//  CustomGreeter
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "TestBundle.h"

@implementation TestBundle
- (NSString *)greeting:(NSString *)salutation {
    return [NSString stringWithFormat:@"%@, TestBundle", salutation];
}

- (void)show {
    NSLog(@"show");
}
@end
