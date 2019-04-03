#  The Rock Paper Scissors Game:  RPSGame

## Code snippets

This print in console

```
NSLog(@"RPSGame!");
```

Alloc memory space for a variable
```
RPSController *controller = [[RPSController alloc]init];
```

The header file, public interface. If we want other classes access to method must be appear here

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

Model an object
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