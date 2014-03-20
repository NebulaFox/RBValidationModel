//
//  RBLastNameValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBLastNameValidator.h"
#import "RBLastNameCondition.h"

@implementation RBLastNameValidator

- (instancetype)init
{
    return [super initWithCondition:[[RBLastNameConition alloc] init]];
}

@end
