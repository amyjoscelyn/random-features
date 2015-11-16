//
//  AMYColorSliderViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/13/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYColorSliderViewController.h"

@interface AMYColorSliderViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;

@end

@implementation AMYColorSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sliderValueLabel.text = [NSString stringWithFormat:@"%f", self.colorSlider.value];
    
    self.view.backgroundColor = [UIColor colorWithWhite:self.colorSlider.value alpha:0.5];
}

- (IBAction)colorSliderValueChanged:(id)sender
{
    self.sliderValueLabel.text = [NSString stringWithFormat:@"%f", self.colorSlider.value];
    
    self.view.backgroundColor = [UIColor colorWithWhite:self.colorSlider.value alpha:0.5];
}

@end
