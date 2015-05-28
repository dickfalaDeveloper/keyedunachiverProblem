//
//  SettingDataModel.m
//  UnarchiverSlider
//
//  Created by James on 2015/5/28.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "SettingData.h"

@implementation SettingData

SettingData *sharedInstance;

+(SettingData*) sharedInstance{
    if( sharedInstance == nil )
    {
        sharedInstance = [SettingData new];
        
    }
    return sharedInstance;
}


-(id) init{
    self = [super init];
    
    if( self )
    {
        
        self.flightSettingModel = [FlightSettingModel new];
    }
    
    return self;
}

@end
