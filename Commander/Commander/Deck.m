//
//  Deck.m
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "Deck.h"

static int numberOfDecks = 0;

@implementation Deck

+ (Deck *) newAlloc
{
    numberOfDecks++;
    
    return [Deck alloc];
}

+ (int) totalDecks
{
    return numberOfDecks;
}

@end
