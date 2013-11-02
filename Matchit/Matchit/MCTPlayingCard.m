//
//  MCTPlayingCard.m
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import "MCTPlayingCard.h"

@implementation MCTPlayingCard
@synthesize suit = _suit;

+ (NSUInteger) maxRank
{
    return [[MCTPlayingCard rankStrings] count] - 1;
}

+ (NSArray *) validSuits
{
    return @[@"♣︎", @"♠︎", @"♥︎", @"♦︎"];
    
}

+ (NSArray *) rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5",@"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

-(NSString *) contents
{
    NSString *rankString =[[MCTPlayingCard rankStrings] objectAtIndex:self.rank];
    return [rankString stringByAppendingString:self.suit ];
}

- (void) setSuit:(NSString *)suit
{
    if ([[MCTPlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}




- (void)setRank:(NSUInteger)rank
{
    if (rank <= [MCTPlayingCard maxRank]) {
        _rank = rank;
    }
}



@end
