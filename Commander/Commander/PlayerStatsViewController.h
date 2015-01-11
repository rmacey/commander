//
//  PlayerDetailStatsViewController.h
//  Commander
//
//  Created by Ryan Macey on 1/10/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface PlayerStatsViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *saltyLabel;
@property (nonatomic, weak) IBOutlet UICollectionView *deckCollectionView;
@property (strong, nonatomic) UIImage *deckDefaultImage;

- (IBAction)addDeckButtonTapped:(id)sender;

@end
