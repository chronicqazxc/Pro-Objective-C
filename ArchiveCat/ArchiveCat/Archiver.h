//
//  Archiver.h
//  ArchiveCat
//
//  Created by 金融研發一部-蕭裕翰 on 12/11/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Archiver : NSObject
@property (nonatomic, readwrite) NSString *path;
- (BOOL)encodeArchive:(id)objectGraph toFile:(NSString *)file;
- (id)decodeArchiveFromFile:(NSString *)file;
@end
