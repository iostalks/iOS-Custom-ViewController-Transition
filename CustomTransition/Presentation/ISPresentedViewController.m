//
//  ISPresentedViewController.m
//  CustomTransition
//
//  Created by Jone on 16/3/16.
//  Copyright © 2016年 HangZhou DeLan Technology Co. All rights reserved.
//

#import "ISPresentedViewController.h"

@interface ISPresentedViewController ()
@property (weak, nonatomic) IBOutlet UIButton *dismissButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ISPresentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _dismissButton.alpha = 0;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    for (NSLayoutConstraint *constraint in self.textField.constraints) {
        if (constraint.firstAttribute == NSLayoutAttributeWidth) {
            constraint.constant = self.view.frame.size.width * 2 / 3;
        }
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        _dismissButton.alpha = 1.0;
        [_textField layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender
{
    CGAffineTransform transform = CGAffineTransformMakeRotation(3 * M_PI);
    transform = CGAffineTransformScale(transform, 0.1, 0.1);
    
    for (NSLayoutConstraint *constraint in self.textField.constraints) {
        if (constraint.firstAttribute == NSLayoutAttributeWidth) {
            constraint.constant = 0;
        }
    }

    
    [UIView animateWithDuration:0.4 animations:^{
        _dismissButton.transform = transform;
        [_textField layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
