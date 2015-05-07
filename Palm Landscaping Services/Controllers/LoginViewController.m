//
//  ViewController.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "LoginViewController.h"
#import "loginData.h"
#import "UIColor+AppAdditions.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Change view element colors
    self.view.backgroundColor = [UIColor appBGColor];
    
    //Obfuscate password text field upon entry
    self.passwordTextField.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

//Login button implementation
- (IBAction)loginButtonPressed:(id)sender {

    //Login data instance -- see LoginData.h for more details
    LoginData *loginData = [[LoginData alloc] init];
    
    //Check if text fields are nil -- if nil, prompt user to fix errors.
    if (self.passwordTextField.text.length == 0 || self.usernameTextField.text.length == 0){
        
        //Call alert view -- see below to modify alert view
        [self failedLogin];
        
    } else {
    
    NSArray *tempArray = loginData.userDictionary;
    
    //Iterate through user data
    for (NSArray *array in tempArray) {
        
        //Check if user exists -- if user exists, grant access to either admin or employee view; otherwise, prompt user to fix errors.
        //See UserData.m for list of constants.
        if (![[array valueForKey:kUsername] isEqualToString:self.usernameTextField.text] && ![[array valueForKey:kPassword] isEqualToString:self.passwordTextField.text]) {
            
            //Call alert view -- see below to modify alert view
            [self failedUserLogin];
            break;
    
        }
        
        if ([[array valueForKey:kUsername] isEqualToString:self.usernameTextField.text] && [[array valueForKey:kPassword] isEqualToString:self.passwordTextField.text] && [[array valueForKey:kUserType] isEqualToString:kAdmin]) {
            
            UIStoryboard *adminViewController = [UIStoryboard storyboardWithName:kAdmin bundle:nil];
            UIViewController *initialViewController = [adminViewController instantiateViewControllerWithIdentifier:kAdmin];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:initialViewController];
            navigationController.navigationBarHidden = NO;
            [self presentViewController:navigationController animated:YES completion:NULL];
            break;
            
        } else if ([[array valueForKey:kUsername] isEqualToString:self.usernameTextField.text] && [[array valueForKey:kPassword] isEqualToString:self.passwordTextField.text] && [[array valueForKey:kUserType] isEqualToString:kEmployee]) {
            
            UIStoryboard *employeeViewController = [UIStoryboard storyboardWithName:kEmployee bundle:nil];
            UIViewController *initialViewController = [employeeViewController instantiateViewControllerWithIdentifier:kEmployee];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:initialViewController];
            navigationController.navigationBarHidden = NO;
            [self presentViewController:navigationController animated:YES completion:NULL];
            break;
            
        }
    
    }
    
}
    
}

// Close Keyboard if touch outside of keyboard.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([self.usernameTextField isFirstResponder] && [touch view] != self.usernameTextField) {
        
        [self.usernameTextField resignFirstResponder];
        
    }else if ([self.passwordTextField isFirstResponder] && [touch view] != self.passwordTextField){
        
        [self.passwordTextField resignFirstResponder];
        
    }
    
    [super touchesBegan:touches withEvent:event];
}

//Close keyboard on return/enter
- (IBAction)textFieldReturn:(id)sender {
    
    [sender resignFirstResponder];
}

//Error alerts for failed login attempt(s)
-(void)failedUserLogin {
    
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Unable to sign in"
                                                  message:@"The password or user name doesn't match our records. Please check your entry and try again."
                                                 delegate:self
                                        cancelButtonTitle:@"Try Again"
                                        otherButtonTitles:nil];
    [alert show];
}

-(void)failedLogin {
    
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Unable to sign in"
                                                  message:@"Ensure that all fields have been filled out."
                                                 delegate:self
                                        cancelButtonTitle:@"Ok"
                                        otherButtonTitles:nil];
    [alert show];
}


@end
