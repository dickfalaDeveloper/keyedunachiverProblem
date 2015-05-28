//
//  ViewController.m
//  UnarchiverSlider
//
//  Created by James on 2015/5/28.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ViewController.h"
#import "SettingData.h"

@interface ViewController ()
{
    NSString *path;
    NSString *fileName;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // file manage
    path =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
    fileName = [path stringByAppendingPathComponent:@"flightFile"];
    
    [self setUIValue];
    
    NSLog(@"---");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (IBAction)saveAction:(UIButton *)sender {
    
    [NSKeyedArchiver archiveRootObject:[SettingData sharedInstance].flightSettingModel toFile:fileName];
}

- (IBAction)loadAction:(UIButton *)sender {
    
    [SettingData sharedInstance].flightSettingModel  =   (FlightSettingModel*) [NSKeyedUnarchiver unarchiveObjectWithFile: fileName];
    [self setUIValue];
    
    NSLog(@"current Value:%.f",[SettingData sharedInstance].flightSettingModel.limCurrentVal);
}

- (IBAction)sliderChangedAction:(UISlider *)sender {
    [SettingData sharedInstance].flightSettingModel.limCurrentVal = sender.value;
    self.theTextField.text =  [NSString stringWithFormat:@"%.f",self.theSlider.value];
}

-(void) setUIValue
{
    // setting slider property
    self.theSlider.maximumValue = [SettingData sharedInstance].flightSettingModel.limMaxVal;
    self.theSlider.minimumValue = [SettingData sharedInstance].flightSettingModel.limMinVal;
    self.theSlider.value = [SettingData sharedInstance].flightSettingModel.limCurrentVal;
    
    self.theTextField.text = [NSString stringWithFormat:@"%.f",self.theSlider.value];
 
}

@end
