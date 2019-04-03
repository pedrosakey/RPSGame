//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Pedro Sánchez Castro on 29/03/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"


@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

- (void)throwDown:(Move) move;
- (NSString*)messageForGame:(RPSGame*)game;

@end

