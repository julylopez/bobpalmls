//
//  LoginData.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "LoginData.h"

NSString *const kUsername = @"userName";
NSString *const kPassword = @"password";
NSString *const kFirstName = @"firstName";
NSString *const kLastName = @"lastName";
NSString *const kUserType = @"userType";

NSString *const kAdmin = @"Admin";
NSString *const kEmployee = @"Employee";

@implementation LoginData

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
    
        self.userDictionary = [NSArray arrayWithObjects:
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"bob",kFirstName,
                                @"jenkins",kLastName,
                                @"bob",kUsername,
                                @"password",kPassword,
                                @"Admin",kUserType,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"james",kFirstName,
                                @"franco",kLastName,
                                @"james",kUsername,
                                @"password",kPassword,
                                @"Employee",kUserType,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"seth",kFirstName,
                                @"rogen",kLastName,
                                @"Seth",kUsername,
                                @"password",kPassword,
                                @"Employee",kUserType,
                                nil],
                            nil];
        
    }
    
    return self;
    
}

@end
