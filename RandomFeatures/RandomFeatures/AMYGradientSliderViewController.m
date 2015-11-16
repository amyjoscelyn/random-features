//
//  AMYGradientSliderViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/16/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYGradientSliderViewController.h"

@interface AMYGradientSliderViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *colorsSegmentedControl;
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gradientSegmentedControl;

@property (nonatomic) BOOL isTopColor;
@property (nonatomic, strong) NSString *currentColor;

@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) NSArray *colorsArray;

@end

@implementation AMYGradientSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.isTopColor = YES;
    self.currentColor = @"Red";
    
    self.gradientLayer = [CAGradientLayer layer];
    self.colorsArray = @[ (id)[UIColor blueColor].CGColor, (id)[UIColor blackColor].CGColor ];
    self.gradientLayer.colors = self.colorsArray;
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
}

- (IBAction)colorSliderValueChanged:(id)sender
{
    
}

- (IBAction)gradientLayerChanged:(id)sender
{
    if (self.gradientSegmentedControl.selectedSegmentIndex == 0)
    {
        self.isTopColor = YES;
    }
    else
    {
        self.isTopColor = NO;
    }
    NSLog(@"Are we on the top color? %d", self.isTopColor);
}

- (IBAction)colorSegmentChanged:(id)sender
{
    NSUInteger segmentChosen = self.colorsSegmentedControl.selectedSegmentIndex;
    if (segmentChosen == 0)
    {
        self.currentColor = @"Red";
    }
    else if (segmentChosen == 1)
    {
        self.currentColor = @"Green";
    }
    else if (segmentChosen == 2)
    {
        self.currentColor = @"Blue";
    }
    else
    {
        self.currentColor = @"Alpha";
    }
    NSLog(@"current color: %@", self.currentColor);
}

@end
