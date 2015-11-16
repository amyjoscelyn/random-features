//
//  AMYItemChangerViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/16/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYItemChangerViewController.h"

@interface AMYItemChangerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *itemLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (strong, nonatomic) NSArray *items;

@end

@implementation AMYItemChangerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.items = @[
                   @"🦁", @"🐶", @"🐹", @"🐯", @"🐙", @"🐒", @"🐦", @"🐺", @"🐴", @"🐱", @"🐰"];
}

- (IBAction)sliderValueChanged:(id)sender
{
    NSUInteger sliderValue = self.slider.value * 10;
    self.itemLabel.text = self.items[sliderValue];
}

@end
