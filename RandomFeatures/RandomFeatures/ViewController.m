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
@property (nonatomic) NSUInteger numberOfTimesBlueButtonTapped;
@property (nonatomic) NSUInteger numberOfTimesAlphaButtonTapped;

@property (nonatomic) CGFloat colorWithRedFloat;
@property (nonatomic) CGFloat colorWithGreenFloat;
@property (nonatomic) CGFloat colorWithBlueFloat;
@property (nonatomic) CGFloat alphaFloat;

@property (nonatomic) NSUInteger tapCapMax;
@property (nonatomic) NSUInteger tapCapMin;
@property (nonatomic) CGFloat multiplier;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.multiplier = 0.05;
    
    CGFloat x = 1 / self.multiplier;
    
    self.colorWithRedFloat = 0.0;
    self.colorWithGreenFloat = 0.0;
    self.colorWithBlueFloat = 0.0;
    self.alphaFloat = 0.5;
    
    self.numberOfTimesRedButtonTapped = self.colorWithRedFloat;
    self.numberOfTimesGreenButtonTapped = self.colorWithGreenFloat;
    self.numberOfTimesBlueButtonTapped = self.colorWithBlueFloat;
    self.numberOfTimesAlphaButtonTapped = self.alphaFloat * x;
    
    self.tapCapMax = x;
    self.tapCapMin = 0;
}

- (void)changeBackgroundColor
{
    self.view.backgroundColor = [UIColor colorWithRed:self.colorWithRedFloat green:self.colorWithGreenFloat blue:self.colorWithBlueFloat alpha:self.alphaFloat];
}

- (IBAction)makeBackgroundMoreRedButtonTapped:(id)sender
{
    if (self.numberOfTimesRedButtonTapped == self.tapCapMax)
    {
        NSLog(@"Red value can't go any higher.");
        return;
    }
    self.numberOfTimesRedButtonTapped++;
    
    self.colorWithRedFloat = self.numberOfTimesRedButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Red: %lu, %.2f", self.numberOfTimesRedButtonTapped, self.colorWithRedFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)makeBackgroundLessRedButtonTapped:(id)sender
{
    if (self.numberOfTimesRedButtonTapped == self.tapCapMin)
    {
        NSLog(@"Red value can't go any lower.");
        return;
    }
    self.numberOfTimesRedButtonTapped--;
    
    self.colorWithRedFloat = self.numberOfTimesRedButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Red: %lu, %.2f", self.numberOfTimesRedButtonTapped,self.colorWithRedFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)makeBackgroundMoreGreenButtonTapped:(id)sender
{
    if (self.numberOfTimesGreenButtonTapped == self.tapCapMax)
    {
        NSLog(@"Green value can't go any higher.");
        return;
    }
    self.numberOfTimesGreenButtonTapped++;
    
    self.colorWithGreenFloat = self.numberOfTimesGreenButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Green: %lu, %.2f", self.numberOfTimesGreenButtonTapped, self.colorWithGreenFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)makeBackgroundLessGreenButtonTapped:(id)sender
{
    if (self.numberOfTimesGreenButtonTapped == self.tapCapMin)
    {
        NSLog(@"Green value can't go any lower.");
        return;
    }
    self.numberOfTimesGreenButtonTapped--;
    
    self.colorWithGreenFloat = self.numberOfTimesGreenButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Green: %lu, %.2f", self.numberOfTimesGreenButtonTapped, self.colorWithGreenFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)makeBackgroundMoreBlueButtonTapped:(id)sender
{
    if (self.numberOfTimesBlueButtonTapped == self.tapCapMax)
    {
        NSLog(@"Blue value can't go any higher.");
        return;
    }
    self.numberOfTimesBlueButtonTapped++;
    
    self.colorWithBlueFloat = self.numberOfTimesBlueButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Blue: %lu, %.2f", self.numberOfTimesBlueButtonTapped, self.colorWithBlueFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)makeBackgroundLessBlueButtonTapped:(id)sender
{
    if (self.numberOfTimesBlueButtonTapped == self.tapCapMin)
    {
        NSLog(@"Blue value can't go any lower.");
        return;
    }
    self.numberOfTimesBlueButtonTapped--;
    
    self.colorWithBlueFloat = self.numberOfTimesBlueButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Blue: %lu, %.2f", self.numberOfTimesBlueButtonTapped, self.colorWithBlueFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)addAlphaToBackgroundButtonTapped:(id)sender
{
    if (self.numberOfTimesAlphaButtonTapped == self.tapCapMax)
    {
        NSLog(@"Alpha value can't go any higher.");
        return;
    }
    self.numberOfTimesAlphaButtonTapped++;
    
    self.alphaFloat = self.numberOfTimesAlphaButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Alpha: %lu, %.2f", self.numberOfTimesAlphaButtonTapped, self.alphaFloat);
    
    [self changeBackgroundColor];
}

- (IBAction)takeAwayAlphaFromBackgroundButtonTapped:(id)sender
{
    if (self.numberOfTimesAlphaButtonTapped == self.tapCapMin)
    {
        NSLog(@"Alpha value can't go any lower.");
        return;
    }
    self.numberOfTimesAlphaButtonTapped--;
    
    self.alphaFloat = self.numberOfTimesAlphaButtonTapped * self.multiplier;
    
    NSLog(@"Tapped Alpha: %lu, %.2f", self.numberOfTimesAlphaButtonTapped, self.alphaFloat);
    
    [self changeBackgroundColor];
}

@end
