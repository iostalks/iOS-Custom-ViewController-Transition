//
//  ISTableViewController.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISTableViewController.h"

@interface ISTableViewController ()

@end

@implementation ISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// ----------------------------------------------------------------------------
// 返回列表界面
- (IBAction)unwindToTableViewController:(UIStoryboardSegue*)sender
{
    NSLog(@"");
}
@end
