//
//  RBFirstNameCondition.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBFirstNameCondition.h"

@implementation RBFirstNameCondition

- (id)init
{
    self = [super init];
    if ( self )
    {
        self.shouldAllowViolation = NO;
    }
    return self;
}

- (BOOL)check:(NSString *)string
{
    if (nil == string)
        return NO;
    
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[A-Za-z ]" options:0 error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:string options:0 range:NSMakeRange(0, string.length)];
    
    return numberOfMatches == string.length;
}
@end
