//
//  ISStoryboardSegue.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISStoryboardSegue.h"


@implementation ISStoryboardSegue


- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    // 通过segue的identifier来加载storyboard
    UIStoryboard *externalStoryboard = [UIStoryboard storyboardWithName:identifier bundle:[NSBundle bundleForClass:self.class]];
    
    // 实例化storyborad的控制器
    id initialViewController = [externalStoryboard instantiateInitialViewController];
    
    return [super initWithIdentifier:identifier source:source destination:initialViewController];
}

- (void)perform
{
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:NULL];
}
@end
