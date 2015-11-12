//
//  main.m
//  Elements
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atom.h"
#import "Hydrogen.h"
#import "SubHydrogen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Hydrogen *hydrogen = [Hydrogen hydrogenWithNeutrons:0];
        NSString *fact = [hydrogen factoid];
        NSLog(@"%@", fact);
    }
    return 0;
}
