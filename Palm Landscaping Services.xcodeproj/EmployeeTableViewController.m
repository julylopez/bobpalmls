//
//  EmployeeTableViewController.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "EmployeeTableViewController.h"

@interface EmployeeTableViewController ()

@end

@implementation EmployeeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    

    
    return cell;
}

@end
