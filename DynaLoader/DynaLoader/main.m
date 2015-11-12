//
//  main.m
//  DynaLoader
//
//  Created by 金融研發一部-蕭裕翰 on 11/12/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicGreeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id <Greeter> greeter = [[BasicGreeter alloc] init];
        NSLog(@"%@", [greeter greeting:@"Hello"]);
        
        NSString *bundlePath;
        if (argc != 2) {
            NSLog(@"Please provide a path for the bundle.");
        }
        else {
            bundlePath = [NSString stringWithUTF8String:argv[1]];
            NSBundle *greeterBundle = [NSBundle bundleWithPath:bundlePath];
            if (greeterBundle) {
                NSError *error;
                BOOL isLoaded = [greeterBundle loadAndReturnError:&error];
                if (isLoaded) {
                    Class GreeterClass = [greeterBundle classNamed:@"CustomGreeter"];
                    greeter = [[GreeterClass alloc] init];
                    NSLog(@"%@", [greeter greeting:@"Hello"]);
                    
                    Class ShowClass = [greeterBundle classNamed:@"TestBundle"];
                    id <Greeter> showClass = [[ShowClass alloc] init];
                    [showClass show];
                    
                    greeter = showClass = nil;
                    BOOL isUnloaded = [greeterBundle unload];
                    if (!isUnloaded) {
                        NSLog(@"Couldn't unload bundle");
                    }
                }
                else {
                    NSLog(@"Error = %@", [error localizedDescription]);
                }
            }
            else {
                NSLog(@"Bundle not found at path");
            }
        }
    }
    return 0;
}
