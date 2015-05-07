//
//  JobsList.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "JobsList.h"

//Create constants for dictionary keys
NSString *const kTitle = @"Admin";
NSString *const kContractor = @"contractor";
NSString *const kJobType = @"jobType";
NSString *const kSite = @"site";
NSString *const kHours = @"hours";
NSString *const kStatus = @"status";
NSString *const kSignature = @"signature";
NSString *const kDate = @"date";
NSString *const kPhone = @"phoneNumber";
NSString *const kThumbnail = @"thumbnail";
NSString *const kCompleteDate = @"completeDate";

@implementation JobsList

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        //
        self.jobsDictionary = [NSArray arrayWithObjects:
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/1/15",kDate,
                                @"Sam & Sons",kContractor,
                                @"Plant Trimming",kJobType,
                                @"Site A",kSite,
                                @"5",kHours,
                                @"Complete",kStatus,
                                @"5/1/15",kCompleteDate,
                                @"Yes",kSignature,
                                @"companyOne.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/2/15",kDate,
                                @"Jim Inc.",kContractor,
                                @"Garbage Pickup",kJobType,
                                @"Site C",kSite,
                                @"2",kHours,
                                @"Incomplete",kStatus,
                                @"N/A",kCompleteDate,
                                @"No",kSignature,
                                @"companyTwo.png",kThumbnail,
                                @"1-209-888-5655",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/4/15",kDate,
                                @"KLM",kContractor,
                                @"Leaf Pickup",kJobType,
                                @"Site B",kSite,
                                @"8",kHours,
                                @"Complete",kStatus,
                                @"5/4/15",kCompleteDate,
                                @"Yes",kSignature,
                                @"companyThree.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/1/15",kDate,
                                @"Handy Land",kContractor,
                                @"Weed Spraying",kJobType,
                                @"Site D",kSite,
                                @"5",kHours,
                                @"Complete",kStatus,
                                @"5/2/15",kCompleteDate,
                                @"No",kSignature,
                                @"companyFour.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/8/15",kDate,
                                @"Sam & Sons",kContractor,
                                @"Weed Spraying",kJobType,
                                @"Site C",kSite,
                                @"8",kHours,
                                @"Complete",kStatus,
                                @"5/9/15",kCompleteDate,
                                @"Yes",kSignature,
                                @"companyOne.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/9/15",kDate,
                                @"Jim Inc.",kContractor,
                                @"Garbage Pickup",kJobType,
                                @"Site B",kSite,
                                @"1",kHours,
                                @"Complete",kStatus,
                                @"5/9/15",kCompleteDate,
                                @"Yes",kSignature,
                                @"companyTwo.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/11/15",kDate,
                                @"KLM",kContractor,
                                @"Leaf Pickup",kJobType,
                                @"Site B",kSite,
                                @"8",kHours,
                                @"Complete",kStatus,
                                @"5/11/15",kCompleteDate,
                                @"No",kSignature,
                                @"companyThree.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                               [NSDictionary dictionaryWithObjectsAndKeys:
                                @"5/8/15",kDate,
                                @"Handy Land",kContractor,
                                @"Weed Spraying",kJobType,
                                @"Site D",kSite,
                                @"5",kHours,
                                @"Complete",kStatus,
                                @"5/8/15",kCompleteDate,
                                @"Yes",kSignature,
                                @"companyFour.png",kThumbnail,
                                @"1-209-474-5555",kPhone,
                                nil],
                                nil];
        
    }
    
    return self;
}

@end
