//
//  AspectProxy.m
//  AspectProxy
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "AspectProxy.h"

@implementation AspectProxy
- (id)initWithObject:(id)object andInvoker:(id<Invoker>)invoker {
    return [self initWithObject:object selectors:nil andInvoker:invoker];
}

- (id)initWithObject:(id)object selectors:(NSArray *)selectors andInvoker:(id<Invoker>)invoker {
    _proxyTarget = object;
    _selectors = [selectors mutableCopy];
    _invoker = invoker;
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.proxyTarget methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    if ([self.invoker respondsToSelector:@selector(preInvoke:withTarget:)]) {
        if (self.selectors != nil) {
            SEL methodSel = [invocation selector];
            for (NSValue *selValue in self.selectors) {
                if (methodSel == [selValue pointerValue]) {
                    [[self invoker] preInvoke:invocation withTarget:self.proxyTarget];
                    break;
                }
            }
        }
    }
    else {
        [[self invoker] preInvoke:invocation withTarget:self.proxyTarget];
    }
    
    [invocation invokeWithTarget:self.proxyTarget];
    
    if ([self.invoker respondsToSelector:@selector(postInvoke:withTarget:)]) {
        if (self.selectors != nil) {
            SEL methodSel = [invocation selector];
            for (NSValue *selValue in self.selectors) {
                if (methodSel == [selValue pointerValue]) {
                    [[self invoker] postInvoke:invocation withTarget:self.proxyTarget];
                    break;
                }
            }
        }
    }
    else {
        [[self invoker] postInvoke:invocation withTarget:self.proxyTarget];
    }
}

- (void)registerSelector:(SEL)selector {
    NSValue *selValue = [NSValue valueWithPointer:selector];
    [self.selectors addObject:selValue];
}
@end
