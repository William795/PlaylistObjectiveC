//
//  WILSong.m
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILSong.h"

@implementation WILSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self)
    {
        _title = title;
        _artist = artist;
    }
    return self;
}

@end
