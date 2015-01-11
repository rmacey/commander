//
//  DeckCellCollectionViewCell.h
//  Commander
//
//  Created by Ryan Macey on 1/10/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeckCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellDeckLabel;

@end
