//
//  NSObject+AOP.m
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import "NSObject+AOP.h"
#import <objc/runtime.h>

@implementation NSObject (AOP)

+ (void)aop_ExchangeSelector:(SEL)oldSel newSelector:(SEL)newSel
{
    Method oldMethod = class_getInstanceMethod([self class], oldSel);
    Method newMethod = class_getInstanceMethod([self class], newSel);

    method_exchangeImplementations(oldMethod, newMethod);
}

@end
