//
//  RBPasswordConfirmationValidator.h
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import <US2FormValidator/US2Validator.h>

@interface RBPasswordConfirmationValidator : US2ValidatorSingleCondition

- (instancetype)initWithPassword:(NSString *)password;

@end
