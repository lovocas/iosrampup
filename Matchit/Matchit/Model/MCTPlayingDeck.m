//
//  MCTPlayingDeck.m
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import "MCTPlayingDeck.h"
#import "MCTPlayingCard.h"
@implementation MCTPlayingDeck

- (instancetype)init
{
    self = [super init];
    
    if(self) {
        
        for(NSString *suit in [MCTPlayingCard validSuits]) {
            for(NSUInteger i = 1; i <= [MCTPlayingCard maxRank]; ++i) {
                MCTPlayingCard *playingCard = [[MCTPlayingCard alloc] init];
                playingCard.suit = suit;
                playingCard.rank = i;
                
                [self addCard:playingCard];
            }
        }
        NSLog(@"%d", self.cardCount);
    }
    
    return self;
}


@end
