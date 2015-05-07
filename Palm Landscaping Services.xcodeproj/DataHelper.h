//
//  DataHelper.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/6/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <Foundation/Foundation.h>

//Forward Declatations
@class JobsList;

@interface DataHelper : NSObject

//Instance Properties
@property (strong, nonatomic) JobsList *jobsList;

//Data Type Properties 
@property (strong, nonatomic) NSArray *jobTypeArray;
@property (strong, nonatomic) NSArray *dateArray;
@property (strong, nonatomic) NSArray *siteArray;
@property (strong, nonatomic) NSArray *subcontractorArray;
@property (strong, nonatomic) NSArray *statusArray;
@property (strong, nonatomic) NSArray *hoursArray;
@property (strong, nonatomic) NSArray *verifiedArray;
@property (strong, nonatomic) NSArray *phoneArray;
@property (strong, nonatomic) NSArray *completeDateArray;
@property (strong, nonatomic) NSArray *imageNamesArray;

@end
