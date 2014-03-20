//
//  RBBoolValidator.h
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import <Foundation/Foundation.h>
#import <US2FormValidator/US2Validator.h>

@interface RBBoolValidator : US2ValidatorSingleCondition

- (instancetype)initWithBooleanResult:(BOOL)result;

@end
