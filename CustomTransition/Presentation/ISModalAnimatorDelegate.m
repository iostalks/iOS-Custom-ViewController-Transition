//
//  ISModalAnimatorDelegate.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISModalAnimatorDelegate.h"

@implementation ISModalAnimatorDelegate

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return .3f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC   = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *fromView = fromVC.view;
    UIView *toView   = toVC.view;
    UIView *containerView = [transitionContext containerView];
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    BOOL beginPresented = [toVC isBeingPresented];
    if (beginPresented) {
        [containerView addSubview:toView];
        CGFloat toViewWidth = containerView.frame.size.width * 2 / 3;
        CGFloat toViewHeith = containerView.frame.size.height * 2 / 3;
        toView.bounds = CGRectMake(0, 0, 1, toViewHeith);
        toView.center = containerView.center;
        
        [UIView animateWithDuration:duration animations:^{
            toView.bounds = CGRectMake(0, 0, toViewWidth, toViewHeith);
        } completion:^(BOOL finished) {
            BOOL isCanceled = [transitionContext transitionWasCancelled];
            [transitionContext completeTransition:!isCanceled];
        }];
    }
    
    BOOL beginDismiss = [fromVC isBeingDismissed];
    if (beginDismiss) {
        CGFloat fromViewHeight = fromView.frame.size.height;
        [UIView animateWithDuration:duration animations:^{
            fromView.bounds = CGRectMake(0, 0, 1, fromViewHeight);
        } completion:^(BOOL finished) {
            BOOL isCanceled = [transitionContext transitionWasCancelled];
            [transitionContext completeTransition:!isCanceled];
        }];
    }
}

@end
