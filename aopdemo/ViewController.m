//
//  ViewController.m
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import "ViewController.h"
#import "SomeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonAction:(id)sender {
    SomeViewController *controller = [SomeViewController new];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
