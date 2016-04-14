//
//  NSObject+AOP.h
//  aopdemo
//
//  Created by cysu on 16/4/14.
//  Copyright © 2016年 cysu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AOP)

+ (void)aop_ExchangeSelector:(SEL)oldSel newSelector:(SEL)newSel;

@end
