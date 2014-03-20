//
//  RBPasswordConfirmationValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBPasswordConfirmationValidator.h"
#import "RBPasswordConfirmationCondition.h"

@implementation RBPasswordConfirmationValidator

- (instancetype)initWithPassword:(NSString *)password
{
    return [super initWithCondition:[[RBPasswordConfirmationCondition alloc] initWithPassword:password]];
}

@end
