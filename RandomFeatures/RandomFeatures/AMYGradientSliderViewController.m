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
@property (nonatomic, strong) UIColor *topColor;
@property (nonatomic, strong) UIColor *bottomColor;

@property (nonatomic) CGFloat topColorWithRedFloat;
@property (nonatomic) CGFloat topColorWithGreenFloat;
@property (nonatomic) CGFloat topColorWithBlueFloat;
@property (nonatomic) CGFloat topAlphaFloat;

@property (nonatomic) CGFloat bottomColorWithRedFloat;
@property (nonatomic) CGFloat bottomColorWithGreenFloat;
@property (nonatomic) CGFloat bottomColorWithBlueFloat;
@property (nonatomic) CGFloat bottomAlphaFloat;

@end

@implementation AMYGradientSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.isTopColor = YES;
    self.currentColor = @"Red";
    self.bottomColor = [UIColor blackColor];
    
    self.topColorWithRedFloat = 0.0;
    self.topColorWithGreenFloat = 0.0;
    self.topColorWithBlueFloat = 0.0;
    self.topAlphaFloat = 0.0;
    self.colorSlider.value = self.topColorWithRedFloat;
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
    [self changeBackgroundGradient];
}

- (void)changeBackgroundGradient
{
    if (self.isTopColor)
    {
        self.topColor = [self saveCurrentColor];
    }
    else
    {
        self.bottomColor = [self saveCurrentColor];
    }
    self.colorsArray = @[ (id)self.topColor.CGColor, (id)self.bottomColor.CGColor ];
    self.gradientLayer.colors = self.colorsArray;
}

- (UIColor *)saveCurrentColor
{
    UIColor *color = [UIColor new];
    
    if (self.isTopColor)
    {
        color = [UIColor colorWithRed:self.topColorWithRedFloat green:self.topColorWithGreenFloat blue:self.topColorWithBlueFloat alpha:self.topAlphaFloat];
    }
    else
    {
        color = [UIColor colorWithRed:self.bottomColorWithRedFloat green:self.bottomColorWithGreenFloat blue:self.bottomColorWithBlueFloat alpha:self.bottomAlphaFloat];
    }
    return color;
}

- (IBAction)colorSliderValueChanged:(id)sender
{
    if (self.isTopColor)
    {
        if ([self.currentColor isEqualToString:@"Red"])
        {
            self.topColorWithRedFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Green"])
        {
            self.topColorWithGreenFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Blue"])
        {
            self.topColorWithBlueFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Alpha"])
        {
            self.topAlphaFloat = self.colorSlider.value;
        }
    }
    else
    {
        if ([self.currentColor isEqualToString:@"Red"])
        {
            self.bottomColorWithRedFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Green"])
        {
            self.bottomColorWithGreenFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Blue"])
        {
            self.bottomColorWithBlueFloat = self.colorSlider.value;
        }
        else if ([self.currentColor isEqualToString:@"Alpha"])
        {
            self.bottomAlphaFloat = self.colorSlider.value;
        }
    }
    
    [self changeBackgroundGradient];
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
}

- (IBAction)colorSegmentChanged:(id)sender
{
    NSUInteger segmentChosen = self.colorsSegmentedControl.selectedSegmentIndex;
    if (self.isTopColor)
    {
        if (segmentChosen == 0)
        {
            self.currentColor = @"Red";
            self.colorSlider.value = self.topColorWithRedFloat;
        }
        else if (segmentChosen == 1)
        {
            self.currentColor = @"Green";
            self.colorSlider.value = self.topColorWithGreenFloat;
        }
        else if (segmentChosen == 2)
        {
            self.currentColor = @"Blue";
            self.colorSlider.value = self.topColorWithBlueFloat;
        }
        else
        {
            self.currentColor = @"Alpha";
            self.colorSlider.value = self.topAlphaFloat;
        }
        
    }
    else
    {
        if (segmentChosen == 0)
        {
            self.currentColor = @"Red";
            self.colorSlider.value = self.bottomColorWithRedFloat;
        }
        else if (segmentChosen == 1)
        {
            self.currentColor = @"Green";
            self.colorSlider.value = self.bottomColorWithGreenFloat;
        }
        else if (segmentChosen == 2)
        {
            self.currentColor = @"Blue";
            self.colorSlider.value = self.bottomColorWithBlueFloat;
        }
        else
        {
            self.currentColor = @"Alpha";
            self.colorSlider.value = self.bottomAlphaFloat;
        }
        
    }
}

@end
