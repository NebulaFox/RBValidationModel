//
//  RBBoolCondition.h
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import <Foundation/Foundation.h>
#import <US2FormValidator/US2Condition.h>

@interface RBBoolCondition : US2Condition

@property ( nonatomic, assign ) BOOL booleanResult;
@property ( nonatomic, copy ) NSString * localizedErrorViolation;

- (instancetype)initWithBooleanResult:(BOOL)booleanResult;

- (BOOL)check:(BOOL)boolean;

@end
