//
//  Player.h
//  Commander
//
//  Created by Ryan Macey on 1/7/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (strong, nonatomic) NSString *name;

+ (int) totalPlayers;
+ (Player *) newAlloc;

@end
