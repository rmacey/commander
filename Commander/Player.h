//
//  Player.h
//  Commander
//
//  Created by Ryan Macey on 1/7/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (weak, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *salty;
@property (strong, nonatomic) NSMutableArray *games;
@property (strong, nonatomic) NSMutableArray *decks;

+ (int) totalPlayers;
+ (Player *) newAlloc;

@end
