//
//  AMYColorChooserViewController.m
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYColorChooserViewController.h"

@interface AMYColorChooserViewController ()

@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneOne;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneTwo;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneThree;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneFour;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneFive;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneSix;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneSeven;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneEight;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneNine;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneTen;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneEleven;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonOneTwelve;

@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoOne;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoTwo;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoThree;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoFour;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoFive;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoSix;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoSeven;
@property (weak, nonatomic) IBOutlet UIButton *colorButtonTwoEight;

@end

@implementation AMYColorChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
