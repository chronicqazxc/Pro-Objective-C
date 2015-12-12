//
//  Archiver.m
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import "Archiver.h"

@implementation Archiver
- (id)init {
    if ((self = [super init])) {
        _path = NSTemporaryDirectory();
    }
    return self;
}

- (BOOL)encodeArchive:(id)objectGraph toFile:(NSString *)file {
    NSString *archivePath = [self.path stringByAppendingPathComponent:file];
    NSMutableData *mdata = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:mdata];
    [archiver encodeObject:objectGraph forKey:@"FELINE_KEY"];
    [archiver finishEncoding];
    BOOL result = [mdata writeToFile:archivePath atomically:YES];
    return result;
}

- (id)decodeArchiveFromFile:(NSString *)file {
    NSString *archivePath = [self.path stringByAppendingPathComponent:file];
    NSData *data = [[NSMutableData alloc] initWithContentsOfFile:archivePath];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    id result = [unarchiver decodeObjectForKey:@"FELINE_KEY"];
    [unarchiver finishDecoding];
    return result;
}
@end
