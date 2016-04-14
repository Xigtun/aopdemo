//
//  LoginViewController.m
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];

    UIButton *dismiss = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 50, 50)];
    dismiss.backgroundColor = [UIColor blueColor];
    [dismiss addTarget:self action:@selector(dismissAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismiss];
}

- (void)dismissAction
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
