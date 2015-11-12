//
//  Greeter.h
//  DynaLoader
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Greeter <NSObject>
- (NSString *)greeting:(NSString *)salutation;
- (void)show;
@end
