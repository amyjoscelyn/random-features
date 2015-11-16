//
//  AMYColorSliderViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/13/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYColorSliderViewController.h"

@interface AMYColorSliderViewController ()

@property (weak, nonatomic) IBOutlet UILabel *colorSliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;

@property (weak, nonatomic) IBOutlet UILabel *alphaSliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;

@property (nonatomic) CGFloat tintValue;
@property (nonatomic) CGFloat alphaValue;

@end

@implementation AMYColorSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorSliderValueLabel.text = [NSString stringWithFormat:@"%f", self.colorSlider.value];
    self.alphaSliderValueLabel.text = [NSString stringWithFormat:@"%f", self.alphaSlider.value];
    
    self.tintValue = 0.5;
    self.alphaValue = 0.5;
    
    self.view.backgroundColor = [UIColor colorWithWhite:self.tintValue alpha:self.alphaValue];
}

- (IBAction)colorSliderValueChanged:(id)sender
{
    self.colorSliderValueLabel.text = [NSString stringWithFormat:@"%f", self.colorSlider.value];
    
    self.tintValue = self.colorSlider.value;
    
    [self adjustBackgroundColor];
}

- (IBAction)alphaSliderValueChanged:(id)sender
{
    self.alphaSliderValueLabel.text = [NSString stringWithFormat:@"%f", self.alphaSlider.value];
    
    self.alphaValue = self.alphaSlider.value;
    
    [self adjustBackgroundColor];
}

- (void)adjustBackgroundColor
{
    self.view.backgroundColor = [UIColor colorWithWhite:self.tintValue alpha:self.alphaValue];
}

@end
