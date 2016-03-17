//
//  ISPresentingViewController.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISPresentingViewController.h"
#import "ISModalTransationDelegate.h"

@interface ISPresentingViewController ()
@property (nonatomic, strong) ISModalTransationDelegate *delegate;
@end

@implementation ISPresentingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = [ISModalTransationDelegate new];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 .FullScreen 的时候，presentingView 的移除和添加由 UIKit 负责，在 presentation 转场结束后被移除，dismissal 转场结束时重新回到原来的位置；
 .Custom 的时候，presentingView 依然由 UIKit 负责，但 presentation 转场结束后不会被移除。
 */

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *presentedVC = segue.destinationViewController;
    presentedVC.transitioningDelegate = self.delegate;
    presentedVC.modalPresentationStyle = UIModalPresentationCustom;

    [super prepareForSegue:segue sender:sender];
}


@end
