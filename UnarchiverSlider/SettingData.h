//
//  SettingDataModel.h
//  UnarchiverSlider
//
//  Created by James on 2015/5/28.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlightSettingModel.h"

@interface SettingData : NSObject

@property (nonatomic,strong) FlightSettingModel *flightSettingModel;
+(SettingData*) sharedInstance;

@end
