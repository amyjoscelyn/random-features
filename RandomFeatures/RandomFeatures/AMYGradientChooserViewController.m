//
//  AMYGradientChooserViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYGradientChooserViewController.h"
#import "AMYColorChooserViewController.h"

@interface AMYGradientChooserViewController () <AMYColorChooserViewControllerDelegate>

@end

@implementation AMYGradientChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
    
    self.topColor = [UIColor lightGrayColor];
    self.bottomColor = [UIColor whiteColor];
    
    self.colorsArray = [[NSMutableArray alloc] init];
    [self.colorsArray addObject:(id)self.topColor.CGColor];
    [self.colorsArray addObject:(id)self.bottomColor.CGColor];
    self.gradientLayer.colors = self.colorsArray;
}

- (void)bottomColorHasChanged:(UIColor *)color
{
    self.bottomColor = color;
    [self.colorsArray addObject:(id)self.bottomColor.CGColor];
    self.gradientLayer.colors = self.colorsArray;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"is this preparing?");
    AMYColorChooserViewController *colorChooserDVC = segue.destinationViewController;
    colorChooserDVC.delegate = self;
}

//  If I have a container view in the top and bottom corners, it can contain a collection view of buttons... or a scroll view of them.  Each button has its own color, buttons side by side in a grid, and when you choose one the color of that side of the gradient changes to match.

@end
