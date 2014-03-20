//
//  RBValidationModel.m
//
//  Created by Robbie Bykowski on 10/09/2013.
//

#import <US2FormValidator/US2ConditionCollection.h>

#import "RBValidationModel.h"

#import "RBEmailValidator.h"
#import "RBPasswordValidator.h"
#import "RBPasswordConfirmationValidator.h"
#import "RBNameValidator.h"
#import "RBFirstNameValidator.h"
#import "RBLastNameValidator.h"

NSString * const RBValidationModelErrorDomain = @"RBValidationModelErrorDomain";

@interface RBValidationModel ()

@property ( nonatomic, strong ) NSMutableArray * ptrValidationErrors;

@end


@implementation RBValidationModel

- (instancetype)init
{
    self = [super init];
    if ( self )
    {
        self.ptrValidationErrors = [NSMutableArray array];
    }
    return self;
}

- (BOOL)validateEmail:(NSString *)email
{
    return [self _validateConditionCollection:[[RBEmailValidator new] checkConditions:email] withCode:RBValidationModelErrorCodeEmail];
}

- (BOOL)validatePassword:(NSString *)password
{
    return [self _validateConditionCollection:[[RBPasswordValidator new] checkConditions:password] withCode:RBValidationModelErrorCodePassword];
}

- (BOOL)validateName:(NSString *)name
{
    return [self _validateConditionCollection:[[RBNameValidator new] checkConditions:name] withCode:RBValidationModelErrorCodeName];
}

- (BOOL)validateFirstName:(NSString *)firstName
{
    return [self _validateConditionCollection:[[RBFirstNameValidator new] checkConditions:firstName] withCode:RBValidationModelErrorCodeFirstName];
}

- (BOOL)validateLastName:(NSString *)lastName
{
    return [self _validateConditionCollection:[[RBLastNameValidator new] checkConditions:lastName] withCode:RBValidationModelErrorCodeLastName];
}

- (BOOL)validatePassword:(NSString *)password againstConfirmation:(NSString *)confirmPassword
{
    return [self _validateConditionCollection:[[[RBPasswordConfirmationValidator alloc] initWithPassword:password] checkConditions:confirmPassword] withCode:RBValidationModelErrorCodeConfirmPassword];
}

- (void)addErrors:(NSArray *)errors;
{
    [self.ptrValidationErrors addObjectsFromArray:errors];
}

- (void)generateErrorWithDomain:(NSString *)domain code:(NSUInteger)code localizedString:(NSString *)string
{
    NSDictionary * userInfo = nil;
    if (string != nil)
    {
        userInfo = @{NSLocalizedDescriptionKey: string};
    }
    [self.ptrValidationErrors addObject:[NSError errorWithDomain:domain code:code userInfo:userInfo]];
}

- (BOOL)hasValidationErrorWithDomain:(NSString *)domain code:(NSUInteger)code
{
    __block BOOL hasError = NO;
    
    [self.ptrValidationErrors enumerateObjectsUsingBlock:^(NSError * obj, NSUInteger idx, BOOL *stop) {
        if ( obj.code == code && [obj.domain isEqualToString:domain] )
        {
            *stop = YES;
            hasError = YES;
        }
    }];
    
    return hasError;
}

- (NSString *)localizedValidationErrorDescription
{
    NSMutableString * desc = [NSMutableString new];
    
    [self.validationErrors enumerateObjectsUsingBlock:^(NSError * obj, NSUInteger idx, BOOL *stop)
    {
        [desc appendFormat:@"%@\n", obj.localizedDescription];
    }];
    
    return [NSString stringWithString:desc];
}

- (NSArray *)validationErrors
{
    NSArray * array = nil;
    
    if ( self.ptrValidationErrors.count != 0 )
    {
        array = self.ptrValidationErrors;
    }
    
    return array;
}

- (BOOL)isValid
{
    return self.ptrValidationErrors.count == 0;
}

#pragma mark - Helpers

- (BOOL)_validateConditionCollection:(US2ConditionCollection *)collection withCode:(RBValidationModelErrorCode)code
{
    BOOL isValid = YES;
    
    
    if ( collection != nil )
    {
        isValid = NO;
        for ( US2Condition * c in collection )
        {
            NSString * localisedString;
            if (self.localisedViolationStrings[@(code)] != nil)
            {
                localisedString = self.localisedViolationStrings[@(code)];
            }
            [self generateErrorWithDomain:RBValidationModelErrorDomain code:code localizedString:localisedString];
        }
    }
    return isValid;
}

#pragma mark - Static

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{@"validationErrors" : [NSNull null]};
}

@end
