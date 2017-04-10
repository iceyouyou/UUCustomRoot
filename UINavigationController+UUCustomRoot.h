//
//  UINavigationController+UUCustomRoot.h
//  UUCustomRoot
//
//  Created by Ye Yang on 16/5/18.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

@interface UINavigationController (UUCustomRoot)

/*
 * Pop to a specified [UIViewController] in navigation stack.
 * 1. Add method "-(BOOL)isCustomRootViewController" and "return YES;" in [UIViewController];
 * 2. Then use "[self.navigationController popToCustomRootViewControllerAnimated:XXX];"
 */
- (void)popToCustomRootViewControllerAnimated:(BOOL)animated;

@end

@interface ForUndeclaredSelectorWarning <NSObject>

- (BOOL)isCustomRootViewController;

@end
