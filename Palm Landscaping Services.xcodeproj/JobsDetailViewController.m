//
//  JobsDetailViewController.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/6/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "JobsDetailViewController.h"
#import "UIColor+AppAdditions.h"

@interface JobsDetailViewController ()

@end

@implementation JobsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Change view element colors
    self.view.backgroundColor = [UIColor appBGColor];
    [[UINavigationBar appearance] setTintColor:[UIColor darkGrayColor]];
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];

    //Assign text properties passed from AdminTableViewController to UILabel
    _jobValueLabel.text = _jobText;
    _dateValueLabel.text = _dateText;
    _verifiedValueLabel.text = _verfiedText;
    _siteValueLabel.text = _siteText;
    _hoursValueLabel.text = _hoursText;
    _subcontractorValueLabel.text = _subcontractorText;
    _statusValueLabel.text = _statusText;
    _phoneValueLabel.text = _phoneText;
    _completeDate.text = _completeDateText;
    _logoImageView.image = [UIImage imageNamed:_imageNameText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
