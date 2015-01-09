//
//  PlayersViewController.h
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailViewController.h"

@interface PlayersViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *playersTable;


-(IBAction)addPlayerButtonTapped:(id)sender;

@end

