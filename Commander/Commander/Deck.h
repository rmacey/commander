//
//  Deck.h
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject

@property (strong, nonatomic) NSString *name;


+ (int) totalDecks;
+(Deck *) newAlloc;

@end
