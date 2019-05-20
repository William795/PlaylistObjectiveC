//
//  WILPlaylistController.m
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILPlaylistController.h"

@interface WILPlaylistController()

@property (nonatomic, strong, readonly) NSMutableArray* internalPlaylist;

@end

@implementation WILPlaylistController

+ (WILPlaylistController*)shared
{
    static WILPlaylistController *shared = nil;
    static dispatch_once_t oneceToken;
    dispatch_once(&oneceToken, ^
                  {
                      shared = [WILPlaylistController new];
                  });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _internalPlaylist = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray*)playlists
{
    return self.internalPlaylist;
}


- (void)createPlaylistWithName:(NSString *)name
{
    WILPlaylist *newPlaylist = [[WILPlaylist alloc] initWithName:name songs:[NSMutableArray new]];
    [self.internalPlaylist addObject:newPlaylist];
}

- (void)deletePlaylist:(WILPlaylist *)playlist
{
    [self.internalPlaylist removeObject:playlist];
}

- (void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artits toPlaylist:(WILPlaylist *)playlist
{
    WILSong *newSong = [[WILSong alloc] initWithTitle:title artist:artits];
    [playlist addSongsObject:newSong];
    
}

- (void)removeSong:(WILSong *)song fromPlaylist:(WILPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}

@end
