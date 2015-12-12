//
//  Invoker.h
//  AspectProxy
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Invoker <NSObject>
@required
- (void)preInvoke:(NSInvocation *)inv withTarget:(id)target;
@optional
- (void)postInvoke:(NSInvocation *)inv withTarget:(id)target;
@end
