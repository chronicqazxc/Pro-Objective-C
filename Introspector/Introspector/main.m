//
//  main.m
//  Introspector
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Greeter : NSObject
@property (readwrite, strong) NSString *salutation;
- (NSString *)greeting:(NSString *)recipient;
@end
@implementation Greeter
- (NSString *)greeting:(NSString *)recipient {
    return [NSString stringWithFormat:@"%@, %@", self.salutation, recipient];
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *greeter = [[Greeter alloc] init];
        greeter.salutation = @"Hello";
        
        if ([greeter respondsToSelector:@selector(greeting:)] && [greeter conformsToProtocol:@protocol(NSObject)]) {
            id result = [greeter performSelector:@selector(greeting:) withObject:@"Monster!"];
            NSLog(@"%@", result);
        }
    }
    return 0;
}
