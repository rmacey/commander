//
//  FirstViewController.m
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "DecksViewController.h"
#import "Deck.h"

@interface DecksViewController ()
{
    NSMutableArray		*_decksList;
}

@end

@implementation DecksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Deck totalDecks];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = @"Karador";
    cell.detailTextLabel.text = @"Ryan Macey";
    
//    Singleton *sharedManager = [Singleton sharedManager];
//    cell.textLabel.text = [[[sharedManager.birdDict objectForKey:_group] objectAtIndex:indexPath.row] objectForKey:@"comName"];
    
    return cell;
}

@end
