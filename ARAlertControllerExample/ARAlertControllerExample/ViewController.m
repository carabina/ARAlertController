//
//  ViewController.m
//  ARAlertControllerExample
//
//  Created by alexruperez on 14/2/15.
//  Copyright (c) 2015 alexruperez. All rights reserved.
//

#import "ViewController.h"

#import <ARAlertController/ARAlertController.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    ARAlertController* alert = [ARAlertController alertControllerWithTitle:@"My Alert"
                                                                   message:@"This is an alert."
                                                            preferredStyle:ARAlertControllerStyleAlert];
    
    ARAlertAction* defaultAction = [ARAlertAction actionWithTitle:@"OK" style:ARAlertActionStyleDefault
                                                          handler:^(ARAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [alert presentInViewController:self animated:YES completion:nil];
}

@end
