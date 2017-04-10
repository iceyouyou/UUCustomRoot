//
//  UINavigationController+UUCustomRoot.m
//  UUCustomRoot
//
//  Created by Ye Yang on 16/5/18.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

#import "UINavigationController+UUCustomRoot.h"

//#pragma GCC diagnostic ignored "-Wundeclared-selector"

@implementation UINavigationController (UUCustomRoot)

- (void)popToCustomRootViewControllerAnimated:(BOOL)animated {
    UIViewController *customRootVC = nil;
    NSUInteger index = [[self viewControllers] indexOfObject:[self topViewController]];
    for (int i = (int)index - 1; i > 0; i--) {
        UIViewController *preVC = [self.viewControllers objectAtIndex:i];
        SEL sel = @selector(isCustomRootViewController);
        if ([preVC respondsToSelector:sel]) {
            IMP imp = [preVC methodForSelector:sel];
            BOOL (*func)(id, SEL) = (void *)imp;
            if (func(preVC, sel)) {
                customRootVC = preVC;
                break;
            }
        }
    }
    
    if (customRootVC) {
        [self popToViewController:customRootVC animated:animated];
    } else {
        [self popToRootViewControllerAnimated:animated];
    }
}

@end
