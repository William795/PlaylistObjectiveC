//
//  WILDetailTableViewController.h
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WILPlaylist;
NS_ASSUME_NONNULL_BEGIN

@interface WILDetailTableViewController : UITableViewController

@property (nonatomic, strong) WILPlaylist *playlist;

@end

NS_ASSUME_NONNULL_END
