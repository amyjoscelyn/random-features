//
//  AMYGradientChooserViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYGradientChooserViewController.h"

@interface AMYGradientChooserViewController ()

@end

@implementation AMYGradientChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
    
    self.topColor = [UIColor whiteColor];
    self.bottomColor = [UIColor whiteColor];
    
    NSMutableArray *colorsArray = [[NSMutableArray alloc] init];
    [colorsArray addObject:(id)self.topColor.CGColor];
    [colorsArray addObject:(id)self.bottomColor.CGColor];
    self.gradientLayer.colors = colorsArray;
}

//  If I have a container view in the top and bottom corners, it can contain a collection view of buttons... or a scroll view of them.  Each button has its own color, buttons side by side in a grid, and when you choose one the color of that side of the gradient changes to match.

@end
