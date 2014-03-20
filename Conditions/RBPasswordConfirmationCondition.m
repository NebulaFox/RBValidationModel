//
//  RBPasswordConfirmationCondition.m
//
//  Created by Robbie Bykowski on 20/03/2014.
//

#import "RBPasswordConfirmationCondition.h"

@interface RBPasswordConfirmationCondition ()

@property (nonatomic, strong) NSString * password;

@end

@implementation RBPasswordConfirmationCondition

- (id)initWithPassword:(NSString *)password
{
    self = [super init];
    if ( self )
    {
        self.password = password;
    }
    return self;
}

- (BOOL)check:(NSString *)string
{
    BOOL isValid = NO;

    if (self.password != nil && ! [self.password isEqualToString:@""] &&
         string != nil && [self.password isEqualToString:string])
    {
        isValid = YES;
    }
    
    return isValid;
}

@end
