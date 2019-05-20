//
//  WILPlaylistController.h
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WILPlaylist.h"
#import "WILSong.h"

NS_ASSUME_NONNULL_BEGIN

@interface WILPlaylistController : NSObject

//source of truth
@property (nonatomic, strong, readonly) NSArray* playlists;

// singleton
+ (WILPlaylistController*) shared;

//CRUD

//create
- (void) createPlaylistWithName:(NSString*)name;


//delete
-(void) deletePlaylist:(WILPlaylist*)playlist;

//addsong to playlist
-(void) addSongWithTitle:(NSString*)title andArtist:(NSString*)artits toPlaylist:(WILPlaylist*)playlist;

//removesong
-(void) removeSong:(WILSong*)song fromPlaylist:(WILPlaylist*)playlist;


@end

NS_ASSUME_NONNULL_END
