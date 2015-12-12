//
//  main.m
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Archiver.h"
#import "Subfamily.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Archiver *archiver = [[Archiver alloc] init];
        id animal = [[Subfamily alloc] initWithSpecies:@"Liion" genus:@"Panther" family:@"Feild" order:@"Carnivore"];
        NSLog(@"\n%@", [animal description]);
        NSString *file = @"data.archive";
        if ([archiver encodeArchive:animal toFile:file]) {
            NSLog(@"You encode an archive to file %@", [[archiver path] stringByAppendingString:file]);
        }
        
        id data = [archiver decodeArchiveFromFile:file];
        if (data) {
            NSLog(@"You decode an archive from file %@\n%@", [[archiver path] stringByAppendingString:file], [data description]);
        }
    }
    return 0;
}
