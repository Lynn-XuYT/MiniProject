//
//  MNNavigationController.m
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "MNNavigationController.h"

@interface MNNavigationController ()<UIGestureRecognizerDelegate>
@end

@implementation MNNavigationController
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self = [super initWithRootViewController:rootViewController]) {
        self.interactivePopGestureRecognizer.enabled = NO;
        // 获取系统自带滑动手势的target对象
        id target = self.interactivePopGestureRecognizer.delegate;
        // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
        UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:target
                                                                                  action:@selector(handleNavigationTransition:)];
        // 设置手势代理，拦截手势触发
        gesture.delegate = self;
        // 给导航控制器的view添加全屏滑动手势
        [self.view addGestureRecognizer:gesture];
        // 禁止使用系统自带的滑动手势
        self.interactivePopGestureRecognizer.enabled = NO;
        
        self.navigationBar.barTintColor = [UIColor whiteColor];
        self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:17.0]};
        
    }
    return self;
}

#pragma 手势返回
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
//    UIViewController *vc = self.viewControllers.lastObject;
    
    if (self.childViewControllers.count == 1) {
        return NO;
    }
    return YES;
}
@end
