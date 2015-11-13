//
//  ViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/13/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSUInteger numberOfTimesRedButtonTapped;
@property (nonatomic) NSUInteger numberOfTimesGreenButtonTapped;

@property (nonatomic) CGFloat colorWithRedFloat;
@property (nonatomic) CGFloat colorWithGreenFloat;
@property (nonatomic) CGFloat colorWithBlueFloat;
@property (nonatomic) CGFloat alphaFloat;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorWithRedFloat = 0.0;
    self.colorWithGreenFloat = 0.0;
    self.colorWithBlueFloat = 0.0;
    self.alphaFloat = 0.25;
    
    self.numberOfTimesRedButtonTapped = 0;
    self.numberOfTimesGreenButtonTapped = 0;
}

- (void)changeBackgroundColor
{
    self.view.backgroundColor = [UIColor colorWithRed:self.colorWithRedFloat green:self.colorWithGreenFloat blue:self.colorWithBlueFloat alpha:self.alphaFloat];
}

- (IBAction)makeBackgroundMoreRedButtonTapped:(id)sender
{
    CGFloat tappedMultiplier = self.numberOfTimesRedButtonTapped *0.1;
    self.colorWithRedFloat += tappedMultiplier;
    
    [self changeBackgroundColor];
    
    self.numberOfTimesRedButtonTapped += 1;
}

- (IBAction)makeBackgroundMoreGreenButtonTapped:(id)sender
{
    CGFloat tappedMultiplier = self.numberOfTimesGreenButtonTapped *0.1;
    self.colorWithGreenFloat += tappedMultiplier;
    
    [self changeBackgroundColor];
    
    self.numberOfTimesGreenButtonTapped += 1;
}

@end
