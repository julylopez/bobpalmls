//
//  AdminTableViewController.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "AdminTableViewController.h"
#import "JobsList.h"
#import "JobsDetailViewController.h"
#import "UIColor+AppAdditions.h"
#import "DataHelper.h"

@interface AdminTableViewController ()

@end

@implementation AdminTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Change color properties on UINavigationBar & set navigation title
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];
    self.title = kTitle;
    
    //Add UIBarButtonItem to UINavigationBar
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Graph"
                                                            style:UIBarButtonItemStylePlain
                                                            target:nil
                                                            action:nil];
    rightButton.tintColor = [UIColor darkGrayColor];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //Return number of elements in array to assign number of cells to UITableView
    self.jobsList = [[JobsList alloc] init];
    return [self.jobsList.jobsDictionary count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //Data Helper instance to access arrays to insert data into appropriate element.
    self.dataHelper = [[DataHelper alloc] init];
    
    UILabel *jobType = (UILabel *)[cell viewWithTag:4];
    jobType.text = self.dataHelper.jobTypeArray[indexPath.row];
    
    UILabel *date = (UILabel *)[cell viewWithTag:2];
    date.text = self.dataHelper.dateArray[indexPath.row];
    
    UILabel *site = (UILabel *)[cell viewWithTag:3];
    site.text = self.dataHelper.siteArray[indexPath.row];
    
    UILabel *subcontractor = (UILabel *)[cell viewWithTag:1];
    subcontractor.text = self.dataHelper.subcontractorArray[indexPath.row];
    
    UILabel *status = (UILabel *)[cell viewWithTag:5];
    status.text = self.dataHelper.statusArray[indexPath.row];
    
    UIImageView *thumbnail = (UIImageView *)[cell viewWithTag:6];
    NSString *imageString = [self.dataHelper.imageNamesArray objectAtIndex:indexPath.row];
    thumbnail.image = [UIImage imageNamed:imageString];
    
    //Alternate cell bakground color in table view
    if (indexPath.row % 2) {
        
        cell.contentView.backgroundColor = [UIColor tableViewCellColor];
    } else {
        
        cell.contentView.backgroundColor = [UIColor whiteColor];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Segue to corresponding view upon selecting UITableViewCell
    [self performSegueWithIdentifier:@"showDetail" sender:self];
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:@"showDetail"]) {

        //Create JobsDetailViewController instance to access its properties
        self.jobsDetailViewController = (JobsDetailViewController *)segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
       //Data Helper instance to access arrays to insert data into appropriate element upon selecting row.
        self.dataHelper = [[DataHelper alloc] init];
        
        //Pass data to JobsDetailViewController based on the cell selected.
        _jobsDetailViewController.dateText = [self.dataHelper.dateArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.jobText = [self.dataHelper.jobTypeArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.hoursText = [self.dataHelper.hoursArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.siteText = [self.dataHelper.siteArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.verfiedText = [self.dataHelper.verifiedArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.subcontractorText = [self.dataHelper.subcontractorArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.statusText = [self.dataHelper.statusArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.phoneText = [self.dataHelper.phoneArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.completeDateText = [self.dataHelper.completeDateArray objectAtIndex:indexPath.row];
        _jobsDetailViewController.imageNameText = [self.dataHelper.imageNamesArray objectAtIndex:indexPath.row];
    }
    
    
}


@end
