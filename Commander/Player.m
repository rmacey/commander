//
//  Player.m
//  Commander
//
//  Created by Ryan Macey on 1/7/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "Player.h"

static int numberOfPlayers = 0;

@implementation Player

+ (Player *)newAlloc
{
    numberOfPlayers++;
    return [Player alloc];
}
+ (int)totalPlayers
{
    return numberOfPlayers;
}

-(id)init
{
   self = [super init];
    if(self)
    {
        self.games = [[NSMutableArray alloc]  init];
        self.decks = [[NSMutableArray alloc]  init];
        self.salty = [[NSNumber alloc] initWithDouble:0.0];
        
    }
    return self;
}


@end
