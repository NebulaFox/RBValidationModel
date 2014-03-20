//
//  RBASCIICondition.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBASCIICondition.h"

@implementation RBASCIICondition

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
    
    // http://www.catonmat.net/blog/my-favorite-regex/
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[ -~]" options:0 error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:string options:0 range:NSMakeRange(0, string.length)];
    
    return numberOfMatches == string.length;
}
@end
