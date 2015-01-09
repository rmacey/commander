//
//  PlayerDetailViewController.h
//  Commander
//
//  Created by Ryan Macey on 1/8/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface PlayerDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) Player *player;

@end
