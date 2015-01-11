//
//  DataController.h
//  Commander
//
//  Created by Ryan Macey on 1/10/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Deck.h"
#import "Game.h"

@interface DataController : NSObject
{
    NSMutableArray *players;
    Player *selectedPlayer;
    
    NSMutableArray *decks;
    Deck *selectedDeck;
    
    NSMutableArray *games;
    Game *selectedGame;
    
}

+ (DataController*)sharedDataController;

- (void)addPlayer:(Player*)player;
- (void)addDeck:(Deck*)deck forPlayer:(Player*)player;
- (void)addGame:(Game*)game;

- (Player*)getSelectedPlayer;
- (Deck*)getSelectedDeck;
- (Game*)getSelectedGame;

- (void)setSelectedPlayer:(Player*)player;
- (void)setSelectedDeck:(Deck*)deck;
- (void)setSelectedGame:(Game*)game;

- (NSMutableArray*)getPlayers;
- (NSMutableArray*)getDecks;
- (NSMutableArray*)getGames;




@end
