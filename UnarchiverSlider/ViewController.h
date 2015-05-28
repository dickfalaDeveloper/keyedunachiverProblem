//
//  ViewController.h
//  UnarchiverSlider
//
//  Created by James on 2015/5/28.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *theSlider;
@property (weak, nonatomic) IBOutlet UITextField *theTextField;
- (IBAction)saveAction:(UIButton *)sender;
- (IBAction)loadAction:(UIButton *)sender;
- (IBAction)sliderChangedAction:(UISlider *)sender;


@end

