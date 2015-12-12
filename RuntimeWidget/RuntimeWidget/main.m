//
//  main.m
//  RuntimeWidget
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
//#import <objc/message.h>

static void display(id self, SEL _cmd) {
    NSLog(@"Invoking method with selector %@ on %@ instance", NSStringFromSelector(_cmd), [self className]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class WidgetClass = objc_allocateClassPair([NSObject class], "Widget", 0);
        
        const char *types = "V@:";
        class_addMethod(WidgetClass, @selector(display), (IMP)display, types);
        
        const char *height = "height";
        class_addIvar(WidgetClass, height, sizeof(id), rint(log2(sizeof(id))), @encode(id));
        
        objc_registerClassPair(WidgetClass);
        
        id widget = [[WidgetClass alloc] init];
        id value = [NSNumber numberWithInt:15];
        [widget setValue:value forKey:[NSString stringWithUTF8String:"height"]];
        
        objc_msgSend(widget, NSSelectorFromString(@"display"));
        
        NSNumber *width = [NSNumber numberWithInt:10];
        objc_setAssociatedObject(widget, @"width", width, OBJC_ASSOCIATION_RETAIN);
        
        id result = objc_getAssociatedObject(widget, @"width");
        NSLog(@"Widget instance width = %@", result);
    }
    return 0;
}
