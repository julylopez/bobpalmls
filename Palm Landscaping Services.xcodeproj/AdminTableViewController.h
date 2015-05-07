//
//  AdminTableViewController.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <UIKit/UIKit.h>

//Forward Declarations
@class JobsList;
@class JobsDetailViewController;
@class DataHelper;

@interface AdminTableViewController : UITableViewController

//Instance Properties
@property (strong, nonatomic) JobsList *jobsList;
@property (strong, nonatomic) JobsDetailViewController *jobsDetailViewController;
@property (strong, nonatomic) DataHelper *dataHelper;

@end
