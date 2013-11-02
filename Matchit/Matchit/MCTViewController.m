//
//  MCTViewController.m
//  Matchit
//
//  Created by Mou, Jian on 11/2/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import "MCTViewController.h"
#import "MCTPlayingDeck.h"
#import "MCTCard.h"
@interface MCTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property(nonatomic) int flipsCount;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@property (nonatomic, strong)  MCTDeck *deck;
@end

@implementation MCTViewController

//@synthesize deck = _deck;

-(void)viewDidLoad
{
    UIImage *cardBack = [UIImage imageNamed:@"cardback"];
    [_cardButton setBackgroundImage:cardBack forState:UIControlStateNormal];
    [_cardButton setTitle:@"" forState:UIControlStateNormal];
}

- (void)setFlipsCount:(int)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",_flipsCount];
}

- (MCTDeck *) deck
{
    if(_deck == nil) {
        _deck =[[MCTPlayingDeck alloc] init];
    }
    return _deck;
}

- (IBAction)touchCardButton:(UIButton *)sender {
    NSLog(@"previous tilte %@", [sender currentTitle]);
    if([[sender currentTitle] length]) {
        UIImage *cardBack = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardBack forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        UIImage *cardBack = [UIImage imageNamed:@"cardfront"];
        MCTCard *card = [self.deck drawRandomCard];
       
        [sender setBackgroundImage:cardBack forState:UIControlStateNormal];
        [sender setTitle:[card contents] forState:UIControlStateNormal];
        self.flipsCount ++;
    }
    
    
    
}


@end
