//
//  AuditingInvoker.m
//  AspectProxy
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "AuditingInvoker.h"

@implementation AuditingInvoker
- (void)preInvoke:(NSInvocation *)inv withTarget:(id)target {
    NSLog(@"Creating audit log before sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]), [target className]);
}

- (void)postInvoke:(NSInvocation *)inv withTarget:(id)target {
    NSLog(@"Creating audit log after sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]), [target className]);
}
@end
