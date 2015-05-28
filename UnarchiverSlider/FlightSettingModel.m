//
//  FlishgtSettingModel.m
//  UnarchiverSlider
//
//  Created by James on 2015/5/28.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "FlightSettingModel.h"
@interface FlightSettingModel()
{
    
}
@end
@implementation FlightSettingModel

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        
        self.limDefaultVal = 3.0;
        self.limCurrentVal = 4.0;
        self.limMaxVal = 10;
        self.limMinVal = 0;
        
    }
    return self;
}


- (void)setFlightSettingToDefaultValue
{
    self.limCurrentVal = self.limDefaultVal;
    
}



- (void) encodeWithCoder: (NSCoder *)encoder
{
    [encoder encodeFloat:self.limCurrentVal forKey:@"limCurrentVal"];

}


- (id)initWithCoder:(NSCoder *)decoder {
    if((self = [super init])) {
        self.limCurrentVal = [decoder decodeFloatForKey:@"limCurrentVal"];

    }
    return self;
}



@end
