//
//  ViewController.m
//  OC-Testbed
//
//  Created by Mark Fearnley on 21/10/2016.
//  Copyright © 2016 Atos. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:10 repeats:false];
    
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.title = @"Test Notification";
    content.subtitle = @"This is a test";
    content.body = @"The test notification has fired";
    
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"TestNotification" content:content trigger:trigger];
    
    [[UNUserNotificationCenter currentNotificationCenter] addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"Notification failed to be added.");
        } else {
            NSLog(@"Notification succesfully added.");
        }
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCapitalizePressed:(id)sender {
    NSString *text = [[[CapitalizeManager alloc] init] capitalizeString:_inputField.text];
    [_outputLabel setText:text];
}


@end
