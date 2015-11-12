//
//  main.m
//  Dynamic Class
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
//#import <objc/message.h>

NSString *greeting(id self, SEL _cmd) {
    return @"Hello World";
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class dynamicClass = objc_allocateClassPair([NSObject class], "DynamicClass", 0);
        Method description = class_getInstanceMethod([NSObject class], @selector(description));
        const char *types = method_getTypeEncoding(description);
        class_addMethod(dynamicClass, @selector(greeting), (IMP)greeting, types);
        objc_registerClassPair(dynamicClass);
        
        id dynamicObject = [[dynamicClass alloc] init];
        NSLog(@"%@", objc_msgSend(dynamicObject, NSSelectorFromString(@"greeting")));
    }
    return 0;
}
