//
//  RBPasswordConfirmationCondition.h
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import <US2FormValidator/US2Condition.h>

@interface RBPasswordConfirmationCondition : US2Condition

- (instancetype)initWithPassword:(NSString *)password;

@end
