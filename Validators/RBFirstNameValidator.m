//
//  RBFirstNameValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBFirstNameValidator.h"

@implementation RBFirstNameValidator

- (id)init
{
    self = [super init];
    if ( self )
    {
        self.allowWhitespace = YES;
    }
    return self;
}

@end
