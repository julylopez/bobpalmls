//
//  JobsList.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <Foundation/Foundation.h>

//Access constants in other classes
extern NSString *const kContractor;
extern NSString *const kJobType;
extern NSString *const kSite;
extern NSString *const kHours;
extern NSString *const kStatus;
extern NSString *const kSignature;
extern NSString *const kDate;
extern NSString *const kThumbnail;
extern NSString *const kTitle;
extern NSString *const kPhone;
extern NSString *const kCompleteDate;

@interface JobsList : NSObject

///Data Type Properties
@property (strong, nonatomic) NSArray *jobsDictionary;

@end
