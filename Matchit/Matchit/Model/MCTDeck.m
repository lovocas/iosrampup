//
//  MCTDeck.m
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import "MCTDeck.h"
@interface MCTDeck ()
@property (strong, nonatomic) NSMutableArray *cards;
@end


@implementation MCTDeck

-(NSMutableArray *) cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}


- (void)addCard:(MCTCard *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(MCTCard *)card {
    [self addCard:card atTop:NO];
}



- (MCTCard *)drawRandomCard
{
    MCTCard *randomCard = nil;
    if([_cards count]) {
        unsigned index = arc4random() % [_cards count];
        randomCard = _cards[index];
        [_cards removeObjectAtIndex:index];
    }
    
    return randomCard;
    
    
}

- (NSUInteger)cardCount
{
    return [self.cards count];
}


@end
