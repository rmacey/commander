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

//@property (weak, nonatomic) Player *player;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIViewController *currentViewController;

@end
