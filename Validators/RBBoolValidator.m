//
//  RBBoolValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBBoolValidator.h"
#import "RBBoolCondition.h"

@interface RBBoolValidator ()

@end

@implementation RBBoolValidator

- (instancetype)initWithBooleanResult:(BOOL)result
{
    return [super initWithCondition:[[RBBoolCondition alloc] initWithBooleanResult:result]];
}

@end
