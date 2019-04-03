//
//  main.m
//  RockPaperScissors
//
//  Created by Pedro Sánchez Castro on 29/03/2019.
//  Copyright © 2019 pedrosa.pro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"RPSGame!");
        
        // Start the game with controller
        RPSController *controller = [[RPSController alloc]init];
        
        // Human player choose ...
        [controller throwDown:Paper];
        
        NSString *resultsMessage;
        
        // Who wins
        resultsMessage = [controller messageForGame:controller.game];
        
        NSLog(@"%@", resultsMessage);
        
    }
    return 0;
}
