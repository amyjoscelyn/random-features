//
//  AMYColorChooserViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYColorChooserViewController.h"

@interface AMYColorChooserViewController ()

@property (nonatomic, strong) UIColor *bottomColor;

@end

@implementation AMYColorChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.bottomColor = [[UIColor alloc] init];
}

#pragma Color Row One Buttons

- (IBAction)colorButtonTapped:(UIButton *)sender
{
    self.bottomColor = sender.backgroundColor;
    NSLog(@"%@", self.bottomColor);
    [self.delegate bottomColorHasChanged:self.bottomColor];
}

@end
