//
//  LoginData.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kUsername;
extern NSString *const kPassword;
extern NSString *const kFirstName;
extern NSString *const kLastName;
extern NSString *const kUserType;
extern NSString *const kEmployee;
extern NSString *const kAdmin;

@interface LoginData : NSObject

@property (strong, nonatomic) NSArray *userDictionary;

@end
