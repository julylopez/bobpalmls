//
//  JobsDetailViewController.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/6/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobsDetailViewController : UIViewController

//Image View Properties
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;

//Label Properties
@property (weak, nonatomic) IBOutlet UILabel *dateValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *jobValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *siteValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *hoursValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *verifiedValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *subcontractorValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *completeDate;

//Text Properties
@property (strong, nonatomic) NSString *dateText;
@property (strong, nonatomic) NSString *jobText;
@property (strong, nonatomic) NSString *siteText;
@property (strong, nonatomic) NSString *hoursText;
@property (strong, nonatomic) NSString *verfiedText;
@property (strong, nonatomic) NSString *subcontractorText;
@property (strong, nonatomic) NSString *statusText;
@property (strong, nonatomic) NSString *phoneText;
@property (strong, nonatomic) NSString *completeDateText;
@property (strong, nonatomic) NSString *imageNameText;

@end
