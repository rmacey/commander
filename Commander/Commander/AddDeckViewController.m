//
//  AddDeckViewController.m
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "AddDeckViewController.h"
#import "Deck.h"

@implementation AddDeckViewController

-(IBAction)cancelButtonTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)saveButtonTapped:(id)sender
{
    Deck *newDeck = [[Deck newAlloc] init];
    
    if(![self.nameTextField.text  isEqual: @""])
    {
        newDeck.name = self.nameTextField.text;
        NSLog([NSString stringWithFormat:@"%d", [Deck totalDecks]]);
    }
    
   [self dismissViewControllerAnimated:YES completion:nil];
}

@end
