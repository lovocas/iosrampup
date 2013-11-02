//
//  MCTPlayingCard.h
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import "MCTCard.h"

@interface MCTPlayingCard : MCTCard

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;

+ (NSUInteger) maxRank;
+ (NSArray *) validSuits;
@end
