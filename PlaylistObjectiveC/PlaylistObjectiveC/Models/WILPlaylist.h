//
//  WILPlaylist.h
//  PlaylistObjectiveC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WILSong;

NS_ASSUME_NONNULL_BEGIN

@interface WILPlaylist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong, readonly) NSArray* songs;

- (instancetype) initWithName:(NSString*)name songs:(NSArray*)songs;

-(void) addSongsObject:(WILSong *)object;
-(void) removeSongsObject:(WILSong *)object;

@end

NS_ASSUME_NONNULL_END
