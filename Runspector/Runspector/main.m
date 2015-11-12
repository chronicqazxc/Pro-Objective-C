//
//  main.m
//  Runspector
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface TestClass1 : NSObject {
@public int myInt;
}
@end
@implementation TestClass1
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TestClass1 *testClass1A = [[TestClass1 alloc] init];
        testClass1A -> myInt = 0xa5a5a5a5;
        TestClass1 *testClass1B = [[TestClass1 alloc] init];
        testClass1B -> myInt = 0xc3c3c3c3;

        long testClass1Size = class_getInstanceSize([TestClass1 class]);
        NSData *obj1Data = [NSData dataWithBytes:(__bridge const void*)(testClass1A) length:testClass1Size];
        NSData *obj2Data = [NSData dataWithBytes:(__bridge const void*)(testClass1B) length:testClass1Size];
        NSLog(@"TestClass1 object testClass1A contains %@", obj1Data);
        NSLog(@"TestClass1 object testClass1B contains %@", obj2Data);
        NSLog(@"TestClass1 memory address = %p", [TestClass1 class]);
        
        id testClass = objc_getClass("TestClass1");
        long testClassSize = class_getInstanceSize([testClass class]);
        NSData *testClassData = [NSData dataWithBytes:(__bridge const void*)testClass length:testClassSize];
        NSLog(@"TestClass1 class contains %@", testClassData);
        NSLog(@"TestClass1 superclass memory address = %p", [TestClass1 superclass]);
        
        id metaClass = objc_getMetaClass("TestClass1");
        long metaClassSize = class_getInstanceSize([metaClass class]);
        NSData *metaClassData = [NSData dataWithBytes:(__bridge const void*)(metaClass) length:metaClassSize];
        NSLog(@"TestClass1 metaclass contains %@", metaClassData);
        class_isMetaClass(metaClass) ? NSLog(@"Class %s is a metaclass", class_getName(metaClass)) : NSLog(@"Class %s is not a metaclass", class_getName(metaClass));
        
    }
    return 0;
}
