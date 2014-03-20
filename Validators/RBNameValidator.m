//
//  RBLastNameValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBNameValidator.h"
#import "RBNameCondition.h"

@implementation RBNameValidator

- (instancetype)init
{
    return [super initWithCondition:[[RBNameCondition alloc] init]];
}

@end
