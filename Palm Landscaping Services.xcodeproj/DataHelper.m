//
//  DataHelper.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/6/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "DataHelper.h"
#import "JobsList.h"

@implementation DataHelper

- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        
        //JobsList Instance to access arrays from its class
        self.jobsList = [[JobsList alloc] init];
        
        //Assign array from JobsList to appropriate array
        self.jobTypeArray = [self.jobsList.jobsDictionary valueForKey:kJobType];
        self.dateArray = [self.jobsList.jobsDictionary valueForKey:kDate];
        self.siteArray = [self.jobsList.jobsDictionary valueForKey:kSite];
        self.subcontractorArray = [self.jobsList.jobsDictionary valueForKey:kContractor];
        self.hoursArray = [self.jobsList.jobsDictionary valueForKey:kHours];
        self.verifiedArray = [self.jobsList.jobsDictionary valueForKey:kSignature];
        self.phoneArray = [self.jobsList.jobsDictionary valueForKey:kPhone];
        self.statusArray = [self.jobsList.jobsDictionary valueForKey:kStatus];
        self.completeDateArray = [self.jobsList.jobsDictionary valueForKey:kCompleteDate];
        self.imageNamesArray = [self.jobsList.jobsDictionary valueForKey:kThumbnail];
        
    }
    
    return self;
    
}

@end
