//
//  RBBoolCondition.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBBoolCondition.h"

@implementation RBBoolCondition

- (instancetype)initWithBooleanResult:(BOOL)booleanResult
{
    self = [super init];
    if (self)
    {
        self.booleanResult = booleanResult;
    }
    return self;
}

- (BOOL)check:(BOOL)boolean
{
    return self.booleanResult == boolean;
}

@end
