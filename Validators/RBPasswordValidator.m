//
//  RBPasswordValidator.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import <US2FormValidator/US2ConditionRange.h>

#import "RBPasswordValidator.h"

#import "RBASCIICondition.h"

@implementation RBPasswordValidator

- (instancetype)init
{
    self = [super init];
    if ( self )
    {
        US2ConditionRange * rangeCondition = [US2ConditionRange new];
        rangeCondition.range = NSMakeRange(6, NSUIntegerMax - 6 );
        [self addCondition:rangeCondition];
        
        RBASCIICondition * asciiCondition = [RBASCIICondition new];
        [self addCondition:asciiCondition];
    }
    return self;
}

@end