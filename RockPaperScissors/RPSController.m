//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Pedro Sánchez Castro on 29/03/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController

-(void)throwDown:(Move) playersMove {
    
    //Here the  RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computerTurn = [[RPSTurn alloc]init];
    
    // The RPSGame class stores the results of a game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computerTurn];
}

-(NSString*)messageForGame:(RPSGame*)game {
    // First, handle the tie
    if(game.firstTurn.description == game.secondTurn.description) {
        return @"It's a tie";
    } else {
    
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game looser] description];
    NSString *resultsString = [game resultsString: game];
    
    // Build the resultsString here.
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
        
    return wholeString;
    }
    
}


@end
