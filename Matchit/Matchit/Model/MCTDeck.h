//
//  MCTDeck.h
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCTCard.h"
@interface MCTDeck : NSObject

- (void)addCard:(MCTCard *) card atTop:(BOOL)atTop;
- (void)addCard:(MCTCard *) card;
- (MCTCard *)drawRandomCard;
- (NSUInteger)cardCount;

@end
