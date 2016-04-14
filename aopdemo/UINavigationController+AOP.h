//
//  UINavigationController+AOP.h
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (AOP)

- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end
