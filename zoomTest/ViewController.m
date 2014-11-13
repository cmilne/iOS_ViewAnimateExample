//
//  ViewController.m
//  zoomTest
//
//  Created by Chris Milne on 11/13/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.imageView setCenter:CGPointMake(320/2.0, 1136/4.0)];
}

-(void)viewDidAppear:(BOOL)animated {
    [self performSelector:@selector(animateImage) withObject:nil afterDelay:0.0];
}

-(void)animateImage {
    [UIView animateWithDuration:1.5 animations:^{
        [self.imageView setFrame:CGRectMake(0, 0, 1136/2.0, 1136/2.0)];
        [self.imageView setCenter:CGPointMake(320/2.0, 1136/4.0)];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 animations:^{
            [self.imageView setFrame:CGRectMake(0, 0, 10.0, 10.0)];
            [self.imageView setCenter:CGPointMake(320/2.0, 1136/4.0)];
        } completion:^(BOOL finished) {
            [self performSelector:@selector(animateImage) withObject:nil afterDelay:0.0];
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
