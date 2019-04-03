#  The Rock Paper Scissors Game:  RPSGame

![version](https://img.shields.io/badge/objectiveC-iOS-purple.svg?maxAge=2592000)

## Overview

This is an example of one ios app written in Objective C. You can find the source of this example in [Objective-C for Swift Developers](https://eu.udacity.com/course/objective-c-for-swift-developers--ud1009) in [Udacity](https://eu.udacity.com/)

## Class Diagram

![Diagram class](https://drive.google.com/uc?id=15fhjtIRiL6Xz5Zgc6fxFsqnnDp6fKOUA)


## Objective-C code snippets from this example

Print in console with NSLog

```
NSLog(@"RPSGame!");
```

Alloc memory space for a variable
```
RPSController *controller = [[RPSController alloc]init];
```

The header file, public interface. For accessing to methods (messages in bojective C) from differents classes must be appear here.

```
@interface RPSGame : NSObject
.
.
.
@end
```

Properties must be define in public interface
```
@property (nonatomic) RPSTurn *firstTurn;
```

Initializers pattern, 

```
- (instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*)computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}
```

Use enum
```
typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};
```

Generate a ramdom number

```
NSUInteger ramdomNumber = arc4random_uniform(3);
```

Switch statatement

```
switch (self.move) {
        case Rock:
            return @"Rock";
            break;
        
        case Paper:
            return @"Paper";
            break;
        
        case Scissors:
            return @"Scissors";
            break;
            
        default:
            return @"Invalid";
            break;
    }
```

String format

```
// Build the resultsString here.
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
```

## License

MIT

