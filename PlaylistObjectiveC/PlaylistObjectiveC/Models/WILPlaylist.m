//
//  WILPlaylist.m
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILPlaylist.h"

@interface WILPlaylist()

// same as private in swift
@property (nonatomic, strong) NSMutableArray* internalSongs;

@end

@implementation WILPlaylist

-(instancetype) initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self)
    {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

// MARK: - Methods

-(void)addSongsObject:(WILSong *)object
{
    [self.internalSongs addObject:object];
}

- (void)removeSongsObject:(WILSong *)object
{
    [self.internalSongs removeObject:object];
}

- (NSArray *)songs
{
    return self.internalSongs;
}

@end
