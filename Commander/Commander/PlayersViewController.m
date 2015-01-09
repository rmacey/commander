//
//  PlayersViewController.m
//  Commander
//
//  Created by Ryan Macey on 1/6/15.
//  Copyright (c) 2015 Ryan Macey. All rights reserved.
//

#import "PlayersViewController.h"
#import "Player.h"


@interface PlayersViewController () <UIAlertViewDelegate>
{
    UIRefreshControl *refreshControl;
    NSMutableArray		* _players;
    UILabel *noPlayersLabel;
}

@end

@implementation PlayersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _players = [[NSMutableArray alloc] init];
    
    
    UITableViewController *tableViewController = [[UITableViewController alloc] init];
    tableViewController.tableView = self.playersTable;
    
    refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refreshPlayers) forControlEvents:UIControlEventValueChanged];
    tableViewController.refreshControl = refreshControl;
    refreshControl.tintColor = [UIColor colorWithRed:(254/255.0) green:(153/255.0) blue:(0/255.0) alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if([Player totalPlayers] == 0)
    {
        noPlayersLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.playersTable.bounds.size.width, self.playersTable.bounds.size.height)];
        noPlayersLabel.text = @"No Players found. Please pull down to refresh.";
        noPlayersLabel.textColor = [UIColor blackColor];
        noPlayersLabel.numberOfLines = 0;
        noPlayersLabel.textAlignment = NSTextAlignmentCenter;
        noPlayersLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
        [noPlayersLabel sizeToFit];
        

        noPlayersLabel.hidden = NO;
        self.playersTable.hidden = YES;
        return 0;
    }
    else
    {
        noPlayersLabel.hidden = YES;
        self.playersTable.hidden = NO;
        return 1;
    }
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Player totalPlayers];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Player *playerForCell = [_players objectAtIndex:indexPath.row];
    
    cell.textLabel.text = playerForCell.name;
    
    //    Singleton *sharedManager = [Singleton sharedManager];
    //    cell.textLabel.text = [[[sharedManager.birdDict objectForKey:_group] objectAtIndex:indexPath.row] objectForKey:@"comName"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"viewPlayer" sender:indexPath];
}










- (IBAction)addPlayerButtonTapped:(id)sender
{
    UIAlertView *addPlayerAlertView = [[UIAlertView alloc] initWithTitle:@"New Player" message:@"Enter player name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Add", nil];
    [addPlayerAlertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [addPlayerAlertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Add"])
    {
        Player *newPlayer = [[Player newAlloc] init];
        newPlayer.name = [alertView textFieldAtIndex:0].text;
        [_players addObject:newPlayer];
        [self refreshPlayers];
    }
}

- (void)refreshPlayers{
    
    [self.playersTable reloadData];
    [refreshControl endRefreshing];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"viewPlayer"])
    {
        NSIndexPath *senderPath = sender;
        [[segue destinationViewController] setPlayer:[_players objectAtIndex:senderPath.row]];
    
//        // set delegate so addSighting can tell bird detail to refresh list
//        [[segue destinationViewController] setDelegate:self];
    }
}


@end
