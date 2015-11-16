//
//  AMYButtonGradientViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/16/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYButtonGradientViewController.h"

@interface AMYButtonGradientViewController ()
@property (weak, nonatomic) IBOutlet UIButton *topButtonOne;
@property (weak, nonatomic) IBOutlet UIButton *topButtonTwo;
@property (weak, nonatomic) IBOutlet UIButton *topButtonThree;
@property (weak, nonatomic) IBOutlet UIButton *topButtonFour;
@property (weak, nonatomic) IBOutlet UIButton *topButtonFive;
@property (weak, nonatomic) IBOutlet UIButton *topButtonSix;

@property (weak, nonatomic) IBOutlet UIButton *bottomButtonOne;
@property (weak, nonatomic) IBOutlet UIButton *bottomButtonTwo;
@property (weak, nonatomic) IBOutlet UIButton *bottomButtonThree;
@property (weak, nonatomic) IBOutlet UIButton *bottomButtonFour;
@property (weak, nonatomic) IBOutlet UIButton *bottomButtonFive;
@property (weak, nonatomic) IBOutlet UIButton *bottomButtonSix;

@property (strong, nonatomic) CAGradientLayer *gradient;
@property (strong, nonatomic) NSMutableArray *colorArray;

@end

@implementation AMYButtonGradientViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.topButtonOne setTintColor:[UIColor redColor]];
    [self.topButtonTwo setTintColor:[UIColor orangeColor]];
    [self.topButtonThree setTintColor:[UIColor yellowColor]];
    [self.topButtonFour setTintColor:[UIColor greenColor]];
    [self.topButtonFive setTintColor:[UIColor blueColor]];
    [self.topButtonSix setTintColor:[UIColor purpleColor]];
    
    [self.bottomButtonOne setTintColor:[UIColor blackColor]];
    [self.bottomButtonTwo setTintColor:[UIColor grayColor]];
    [self.bottomButtonThree setTintColor:[UIColor whiteColor]];
    [self.bottomButtonFour setTintColor:[UIColor brownColor]];
    [self.bottomButtonFive setTintColor:[UIColor cyanColor]];
    [self.bottomButtonSix setTintColor:[UIColor magentaColor]];
    
    self.gradient = [[CAGradientLayer alloc] init];
    self.gradient.startPoint = CGPointMake(0.5, 0);
    self.gradient.endPoint = CGPointMake(0.5, 1);
    
    UIColor *lightGray = [UIColor lightGrayColor];
    UIColor *darkGray = [UIColor darkGrayColor];
    
    self.colorArray = [@[ (id)lightGray.CGColor, (id)darkGray.CGColor ] mutableCopy];
    self.gradient.colors = self.colorArray;
    
    self.gradient.frame = self.view.frame;
    
    [self.view.layer insertSublayer:self.gradient atIndex:0];
}

- (IBAction)buttonOneTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor redColor]];
}

- (IBAction)buttonTwoTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor orangeColor]];
}

- (IBAction)buttonThreeTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor yellowColor]];
}

- (IBAction)buttonFourTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor greenColor]];
}

- (IBAction)buttonFiveTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor blueColor]];
}

- (IBAction)buttonSixTopGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:0 withColor:[UIColor purpleColor]];
}

- (IBAction)buttonOneBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor blackColor]];
}

- (IBAction)buttonTwoBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor grayColor]];
}

- (IBAction)buttonThreeBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor whiteColor]];
}

- (IBAction)buttonFourBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor brownColor]];
}

- (IBAction)buttonFiveBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor cyanColor]];
}

- (IBAction)buttonSixBottomGradientTapped:(id)sender
{
    [self changeBackgroundGradientPosition:1 withColor:[UIColor magentaColor]];
}

- (void)changeBackgroundGradientPosition:(NSUInteger)position withColor:(UIColor *)color
{
    [self.colorArray replaceObjectAtIndex:position withObject:(id)color.CGColor];
    self.gradient.colors = self.colorArray;
}

@end
