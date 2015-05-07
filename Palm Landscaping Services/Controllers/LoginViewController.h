//
//  ViewController.h
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import <UIKit/UIKit.h>

//Forward Declaration
@class LoginData;

@interface LoginViewController : UIViewController <UITextFieldDelegate>

//Forward Declaration Properties
@property (strong, nonatomic) LoginData *loginData;

//ImageView Properties
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;

//Label Properties
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;

//TextField Properties
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

//Button Properties
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

//Button Implementation IBAction
- (IBAction)loginButtonPressed:(id)sender;

@end

