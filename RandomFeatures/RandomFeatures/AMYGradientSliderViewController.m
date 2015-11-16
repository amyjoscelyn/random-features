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

@property (nonatomic) CGFloat colorWithRedFloat;
@property (nonatomic) CGFloat colorWithGreenFloat;
@property (nonatomic) CGFloat colorWithBlueFloat;
@property (nonatomic) CGFloat alphaFloat;

@end

@implementation AMYGradientSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.isTopColor = YES;
    self.currentColor = @"Red";
    self.bottomColor = [UIColor blackColor];
    
    self.colorWithRedFloat = 0.0;
    self.colorWithGreenFloat = 0.0;
    self.colorWithBlueFloat = 0.0;
    self.alphaFloat = 0.0;
    self.colorSlider.value = self.colorWithRedFloat;
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
    [self changeBackgroundGradient];
}

- (void)changeBackgroundGradient
{
    UIColor *color = [UIColor colorWithRed:self.colorWithRedFloat green:self.colorWithGreenFloat blue:self.colorWithBlueFloat alpha:self.alphaFloat];
    
    if (self.isTopColor)
    {
        self.topColor = color;
    }
    else
    {
        self.bottomColor = color;
    }
    self.colorsArray = @[ (id)self.topColor.CGColor, (id)self.bottomColor.CGColor ];
    self.gradientLayer.colors = self.colorsArray;
}

- (IBAction)colorSliderValueChanged:(id)sender
{
    if ([self.currentColor isEqualToString:@"Red"])
    {
        self.colorWithRedFloat = self.colorSlider.value;
    }
    else if ([self.currentColor isEqualToString:@"Green"])
    {
        self.colorWithGreenFloat = self.colorSlider.value;
    }
    else if ([self.currentColor isEqualToString:@"Blue"])
    {
        self.colorWithBlueFloat = self.colorSlider.value;
    }
    else if ([self.currentColor isEqualToString:@"Alpha"])
    {
        self.alphaFloat = self.colorSlider.value;
    }
    
    [self changeBackgroundGradient];
}

- (IBAction)gradientLayerChanged:(id)sender
{
    if (self.gradientSegmentedControl.selectedSegmentIndex == 0)
    {
        self.isTopColor = YES;
        [self.topColor getRed:self.colorWithRedFloat green:self.colorWithGreenFloat blue:self.colorWithBlueFloat alpha:self.alphaFloat]; //I don't think this is how this is supposed to work.  I'll have to read the docs for the method.
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
        self.colorSlider.value = self.colorWithRedFloat;
    }
    else if (segmentChosen == 1)
    {
        self.currentColor = @"Green";
        self.colorSlider.value = self.colorWithGreenFloat;
    }
    else if (segmentChosen == 2)
    {
        self.currentColor = @"Blue";
        self.colorSlider.value = self.colorWithBlueFloat;
    }
    else
    {
        self.currentColor = @"Alpha";
        self.colorSlider.value = self.alphaFloat;
    }
}

//okay.  so what i'm trying to do is get the slider to remember the location of the color the property has been set at.  right now, however, it's saving it too well; whenever i switch top/bottom and press the slider the color changes automatically to the "current" color i had the bottom/top saved as.  so i'll need to check the BOOL and have the colors saved to two separate kinds of color properties
//maybe i can have a generic "get color" method, where i get the UIColor based off of the individual float values, and then set that as a property of top/bottom.  Then i can call the method that will use those saved colors to set the gradient.

@end
