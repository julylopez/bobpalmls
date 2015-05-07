//
//  SiteCViewController.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/7/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "SiteCViewController.h"

@interface SiteCViewController ()

@end

@implementation SiteCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)closeButtonPressed:(id)sender {
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
