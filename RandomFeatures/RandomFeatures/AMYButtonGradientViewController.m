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
}

- (IBAction)buttonOneTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonTwoTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonThreeTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonFourTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonFiveTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonSixTopGradientTapped:(id)sender
{
    
}

- (IBAction)buttonOneBottomGradientTapped:(id)sender
{
    
}

- (IBAction)buttonTwoBottomGradientTapped:(id)sender
{
    
}

- (IBAction)buttonThreeBottomGradientTapped:(id)sender
{
    
}

- (IBAction)buttonFourBottomGradientTapped:(id)sender
{
    
}

- (IBAction)buttonFiveBottomGradientTapped:(id)sender
{
    
}

- (IBAction)buttonSixBottomGradientTapped:(id)sender
{
    
}

@end
