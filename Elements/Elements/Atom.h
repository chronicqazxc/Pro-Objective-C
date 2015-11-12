//
//  Atom.h
//  Elements
//
//  Created by 金融研發一部-蕭裕翰 on 11/8/15.
//  Copyright © 2015 金融研發一部-蕭裕翰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atom : NSObject {
@protected NSUInteger _protons;
@protected NSUInteger _neutrons;
@protected NSUInteger _electrons;
@protected NSString *_chemicalElement;
@protected NSString *_atomicSymbol;
}
@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;
@property (readonly) NSString *atomicSymbol;
- (NSUInteger)massNumber;
@end

@interface Atom(Helper)
- (NSString *)factoid;
@end
