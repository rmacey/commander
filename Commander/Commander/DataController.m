//
//  DataController.m
//  Commander
//
//  Created by Ryan Macey on 1/10/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "DataController.h"

static DataController* sharedDataController; // this will be unique and contain your data

@implementation DataController

+ (DataController*)sharedDataController
{
    if (!sharedDataController)
        sharedDataController = [[DataController alloc] init]; // no autorelease if ARC
    return sharedDataController;
}

-(id)init
{
    self = [super init];
    if(self)
    {
        players = [[NSMutableArray alloc] init];
        games = [[NSMutableArray alloc] init];
        decks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSMutableArray*)getPlayers
{
    return players;
}
- (NSMutableArray*)getDecks
{
    return decks;
}
- (NSMutableArray*)getGames
{
    return games;
}

- (void)addPlayer:(Player*)player
{
    [players addObject:player];
}

- (void)addDeck:(Deck*)deck forPlayer:(Player*)player
{
    [decks addObject:deck];
    [player.decks addObject:deck];
}

- (void)addGame:(Game*)game
{
    [games addObject:game];
}

- (Player*)getSelectedPlayer
{
   
    return selectedPlayer;
}
- (Deck*)getSelectedDeck
{
    return selectedDeck;
}
- (Game*)getSelectedGame
{
    return selectedGame;
}

- (void)setSelectedPlayer:(Player*)player
{
    selectedPlayer = player;
}
- (void)setSelectedDeck:(Deck*)deck
{
    selectedDeck = deck;
}
- (void)setSelectedGame:(Game*)game
{
    selectedGame = game;
}



// ... implement your functions to read/write data
@end

