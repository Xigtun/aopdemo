//
//  UINavigationController+AOP.m
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import "UINavigationController+AOP.h"
#import "NSObject+AOP.h"
#import "LoginViewController.h"

@implementation UINavigationController (AOP)

+ (void)load
{
    [self aop_ExchangeSelector:@selector(pushViewController:animated:) newSelector:@selector(aop_pushViewController:animated:)];
    
    [self aop_ExchangeSelector:@selector(shouldPerformSegueWithIdentifier:sender:) newSelector:@selector(aop_shouldPerformSegueWithIdentifier:sender:)];
}

- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    ///保存在本地 plist 需要判断登录状态的viewcontroller
    NSArray *temp = @[@"SomeViewController"];
    NSString *className = NSStringFromClass(viewController.class);
    for (NSString *name in temp) {
        if ([name isEqualToString:className]) {
            /// 判断是否登陆
            NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
            if (![userDefault objectForKey:@"loginstatus"]) {
                LoginViewController *loginViewController = [LoginViewController new];
                UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginViewController];
                [self presentViewController:nav animated:YES completion:nil];

                return;
            }
        }
    }

    [self aop_pushViewController:viewController animated:YES];
}

- (BOOL)aop_shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(nullable id)sender
{
    if ([identifier isEqualToString:@"UUU"]) {
        NSLog(@"hahah");
        NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
        if (![userDefault objectForKey:@"loginstatus"]) {
            LoginViewController *loginViewController = [LoginViewController new];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginViewController];
            [self presentViewController:nav animated:YES completion:nil];
            
            return NO;
        }
    }
    return YES;
}

@end
