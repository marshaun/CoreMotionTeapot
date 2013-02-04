//
//  CMDeviceMotion+TransformToReferenceFrame.h
//  CorePlotDemo
//
//  Created by Shaun Martin on 1/31/13.
//  Copyright (c) 2013 Shaun Martin. All rights reserved.
//

#import <CoreMotion/CoreMotion.h>

@interface CMDeviceMotion (TransformToReferenceFrame)
-(CMAcceleration)userAccelerationInReferenceFrame;
@end
