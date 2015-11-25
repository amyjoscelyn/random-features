//
//  AMYColorChooserViewController.h
//  RandomFeatures
//
//  Created by Amy Joscelyn on 11/17/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AMYColorChooserViewController;

@protocol AMYColorChooserViewControllerDelegate <NSObject>

- (void)bottomColorHasChanged:(UIColor *)color;

@end

@interface AMYColorChooserViewController : UIViewController

@property (weak, nonatomic) id<AMYColorChooserViewControllerDelegate> delegate;

@end
