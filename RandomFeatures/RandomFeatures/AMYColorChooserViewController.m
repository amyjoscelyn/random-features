//
//  AMYColorChooserViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYColorChooserViewController.h"
#import "AMYGradientChooserViewController.h"

@interface AMYColorChooserViewController ()

@property (nonatomic, strong) UIColor *bottomColor;

@end

@implementation AMYColorChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma Color Row One Buttons

- (IBAction)colorButtonTapped:(UIButton *)sender
{
    self.bottomColor = sender.backgroundColor;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"preparing for segue");
    AMYGradientChooserViewController *gradientDVC = segue.destinationViewController;
    gradientDVC.bottomColor = self.bottomColor;
    gradientDVC.gradientLayer.colors = gradientDVC.colorsArray;
}

@end
