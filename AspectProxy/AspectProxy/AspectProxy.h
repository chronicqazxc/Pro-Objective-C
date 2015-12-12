//
//  AspectProxy.h
//  AspectProxy
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoker.h"

@interface AspectProxy : NSProxy
@property (nonatomic, strong) id proxyTarget;
@property (nonatomic, strong) id <Invoker> invoker;
@property (nonatomic, strong) NSMutableArray *selectors;

- (id)initWithObject:(id)object andInvoker:(id<Invoker>)invoker;
- (id)initWithObject:(id)object selectors:(NSArray *)selectors andInvoker:(id<Invoker>)invoker;
- (void)registerSelector:(SEL)selector;
@end
