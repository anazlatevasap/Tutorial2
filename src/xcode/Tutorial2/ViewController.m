//
//  ViewController.m
//  Tutorial2
//
//  Created by Petrov, Georgi on 2/16/15.
//  Copyright (c) 2015 Petrov, Georgi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextFIeld;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.username = @"bob";
    self.password = @"securepass";
    
    NSLog(@"%@", self.username);
    NSLog(@"%@", self.password);
    
    self.passwordTextFIeld.secureTextEntry = YES;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginWasPressed:(id)sender {
    
    if([self.username isEqualToString:[self.usernameTextField text]])
    {NSLog(@"Succes");
        [self.notificationLabel setText:@"congratulation you have logged in!"];
    }
    else {
        NSLog(@"FAILURE");
        [self.notificationLabel setText:@"enter correct values"];
        
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
