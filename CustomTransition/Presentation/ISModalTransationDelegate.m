//
//  ISModalTransationDelegate.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISModalTransationDelegate.h"
#import "ISModalAnimatorDelegate.h"
@implementation ISModalTransationDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return [ISModalAnimatorDelegate new];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [ISModalAnimatorDelegate new];
}

@end
