//
//  PlayerDetailStatsViewController.m
//  Commander
//
//  Created by Ryan Macey on 1/10/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "PlayerStatsViewController.h"
#import "DataController.h"
#import "DeckCollectionViewCell.h"

@interface PlayerStatsViewController ()

@end

@implementation PlayerStatsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    DataController *dataController = [DataController sharedDataController];
    Player* player = [dataController getSelectedPlayer];
    
    self.saltyLabel.text = [NSString stringWithFormat:@"%@%% Salty", player.salty];
    
    self.deckDefaultImage = [UIImage imageNamed:@"cardIcon.png"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    DataController *dataController = [DataController sharedDataController];
    Player* player = [dataController getSelectedPlayer];
    
    return [player.decks count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DeckCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DeckCell" forIndexPath:indexPath];
    cell.cellImageView.image = self.deckDefaultImage;
    
    //NSString *deckName =
    
    //cell.cellDeckLabel.text =
    
    return cell;
}

- (IBAction)addDeckButtonTapped:(id)sender
{
    UIAlertView *addDeckAlertView = [[UIAlertView alloc] initWithTitle:@"New Deck" message:@"Enter deck name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Add", nil];
    [addDeckAlertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [addDeckAlertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Add"])
    {
        Deck *newDeck = [[Deck newAlloc] init];
        newDeck.name = [alertView textFieldAtIndex:0].text;
        
        DataController *dataController = [DataController sharedDataController];
        Player* player = [dataController getSelectedPlayer];
        
        [dataController addDeck:newDeck forPlayer:player];
        [self.deckCollectionView reloadData];
        //[self refreshPlayers];
    }
}

@end
