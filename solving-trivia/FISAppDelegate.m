//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self solveTrivia];
    return YES;
}

- (NSString *)solveTrivia {
    
    NSDictionary *statesAndCapitals = @ {
        @"Alabama" :	@"Montgomery",
        @"Alaska"	: @"Juneau",
        @"Arizona"	:@"Phoenix",
        @"Arkansas" :	@"Little Rock",
        @"California":	@"Sacramento",
        @"Colorado"	:@"Denver",
        @"Connecticut"	:@"Hartford",
        @"Delaware"	:@"Dover",
        @"Florida"	:@"Tallahassee",
        @"Georgia"	:@"Atlanta",
        @"Hawaii"	:@"Honolulu",
        @"Idaho"	:@"Boise",
        @"Illinois":	@"Springfield",
        @"Indiana"	:@"Indianapolis",
        @"Iowa"	: @"Des Moines",
        @"Kansas"	:@"Topeka",
        @"Kentucky":	@"Frankfort",
        @"Louisiana":	@"Baton Rouge",
        @"Maine"	:@"Augusta",
        @"Maryland":	@"Annapolis",
        @"Massachusetts":	@"Boston",
        @"Michigan"	:@"Lansing",
        @"Minnesota"	:@"Saint Paul",
        @"Mississippi"	:@"Jackson",
        @"Missouri"	:@"Jefferson City",
        @"Montana"	:@"Helena",
        @"Nebraska":	@"Lincoln",
        @"Nevada"	:@"Carson City",
        @"New Hampshire":	@"Concord",
        @"New Jersey"	:@"Trenton",
        @"New Mexico"	:@"Santa Fe",
        @"New York"	:@"Albany",
        @"North Carolina":	@"Raleigh",
        @"North Dakota"	:@"Bismarck",
        @"Ohio":	@"Columbus",
        @"Oklahoma":	@"Oklahoma City",
        @"Oregon"	:@"Salem",
        @"Pennsylvania":	@"Harrisburg",
        @"Rhode Island":	@"Providence",
        @"South Carolina":	@"Columbia",
        @"South Dakota"	:@"Pierre",
        @"Tennessee":	@"Nashville",
        @"Texas"	:@"Austin",
        @"Utah"	:@"Salt Lake City",
        @"Vermont"	:@"Montpelier",
        @"Virginia":	@"Richmond",
        @"Washington":	@"Olympia",
        @"West Virginia":	@"Charleston",
        @"Wisconsin"	:@"Madison",
        @"Wyoming"	:@"Cheyenne"
        
    };
    
    
    
    for (NSString *state in statesAndCapitals) {
        NSString *city = statesAndCapitals[state];
        
        
        NSMutableArray *stateCharacters = [[NSMutableArray alloc]init];
        
        for (NSUInteger i=0; i < [state length]; i++) {
            NSString *characters = [NSString stringWithFormat:@"%c", [state characterAtIndex:i]];
            [stateCharacters addObject: characters];
            
        }
        BOOL correctAnswer = true;
        for (NSString *stateCharacter in stateCharacters) {
            NSMutableArray *cityCharacters = [[NSMutableArray alloc]init];
            for (NSUInteger i=0; i <[city length]; i++) {
                NSString *characters = [NSString stringWithFormat:@"%c", [city characterAtIndex:i]];
                [cityCharacters addObject: characters];
                
            }
            
            for (NSString *cityCharacter in cityCharacters) {
                NSString *uppercaseCity = [cityCharacter uppercaseString];
                NSString *uppercaseState = [stateCharacter uppercaseString];
                
                if([uppercaseCity isEqualToString:uppercaseState]){
                    correctAnswer = false;
                }
                
            }
            
            
        }
        if(correctAnswer){
            NSLog(@"%@", state);
            return state;
            
        }
    }
    
    return @"";
}
@end
