//
//  WILPlaylistTableViewController.m
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILPlaylistTableViewController.h"
#import "WILPlaylistController.h"
#import "WILDetailTableViewController.h"


@interface WILPlaylistTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@end

@implementation WILPlaylistTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self.tableView reloadData];
}


- (IBAction)addButtonTapped:(UIBarButtonItem *)sender {
    [[WILPlaylistController shared] createPlaylistWithName:self.nameTextField.text];
    
    [self.tableView reloadData];
    self.nameTextField.text = @"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return WILPlaylistController.shared.playlists.count;
    //return [[[WILPlaylistController shared] playlists] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    
    WILPlaylist *playlist = [[[WILPlaylistController shared] playlists] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [playlist name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", playlist.songs.count];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //IIDOO - Idendity, index, destination, Object
    if ([[segue identifier] isEqualToString:@"editPlaylistSegue"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        WILDetailTableViewController *destinationVC = [segue destinationViewController];
        WILPlaylist *playlist = [[[WILPlaylistController shared] playlists] objectAtIndex:indexPath.row];
        destinationVC.playlist = playlist;
    }
}


@end
