//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Pedro Sánchez Castro on 29/03/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"



@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn
                      secondTurn: (RPSTurn*)computerTurn;
-(RPSTurn*) winner;
-(RPSTurn*) looser;
-(NSString*) resultsString: (RPSGame*) game;

@end

