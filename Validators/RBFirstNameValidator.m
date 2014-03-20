//
//  RBFirstNameValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBFirstNameValidator.h"
#import "RBFirstNameCondition.h"

@implementation RBFirstNameValidator

- (instancetype)init
{
    return [super initWithCondition:[[RBFirstNameCondition alloc] init]];
}

@end
