//
//  EmployeeTableViewController.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JobsList;

@interface EmployeeTableViewController : UITableViewController

//Instance properties
@property (strong, nonatomic) JobsList *jobsList;

@end
