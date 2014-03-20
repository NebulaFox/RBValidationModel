//
//  RBValidationModel.h
//
//  Created by Robbie Bykowski on 10/09/2013.
//

#import <Foundation/Foundation.h>
#import <Mantle/MTLModel.h>

extern NSString * const RBValidationModelErrorDomain;

typedef NS_ENUM( NSUInteger, RBValidationModelErrorCode )
{
    RBValidationModelErrorCodeEmail,
    RBValidationModelErrorCodePassword,
    RBValidationModelErrorCodeFirstName,
    RBValidationModelErrorCodeLastName,
    RBValidationModelErrorCodeText,
    RBValidationModelErrorCodeConfirmPassword
};

@class US2ConditionCollection;

@interface RBValidationModel : MTLModel

@property ( nonatomic, readonly ) NSArray * validationErrors;

/**
 @param email the email to be validated
 @return validation was successful
 */
- (BOOL)validateEmail:(NSString *)email;

/**
 @param password the password to be validated
 @return validation was successful
 */
- (BOOL)validatePassword:(NSString *)password;

/**
 @param firstName the first name to be validated
 @return validation was successful
 */
- (BOOL)validateFirstName:(NSString *)firstName;

/**
 @param lastName the last name to be validated
 @return validation was successful
 */
- (BOOL)validateLastName:(NSString *)lastName;

/**
 @param password the password to confirm against
 @param confirmPassword the second attempt
 @return validation was successful
 */
- (BOOL)validatePassword:(NSString *)password againstConfirmation:(NSString *)confirmPassword;

- (void)addErrors:(NSArray *)errors;
- (void)generateErrorWithDomain:(NSString *)domain code:(NSUInteger)statusCode localizedString:(NSString *)string;
- (BOOL)hasValidationErrorWithDomain:(NSString *)domain code:(NSUInteger)code;
- (NSString *)localizedValidationErrorDescription;

- (BOOL)isValid;

@end
