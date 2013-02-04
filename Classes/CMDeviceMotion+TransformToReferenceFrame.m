//
//  CMDeviceMotion+TransformToReferenceFrame.m
//  CorePlotDemo
//
//  Created by Shaun Martin on 1/31/13.
//  Copyright (c) 2013 Shaun Martin. All rights reserved.
//

#import "CMDeviceMotion+TransformToReferenceFrame.h"

@implementation CMDeviceMotion (TransformToReferenceFrame)

-(CMAcceleration)userAccelerationInReferenceFrame
{
    CMAcceleration acc = [self userAcceleration];
    CMRotationMatrix rot = [self attitude].rotationMatrix;
    
    CMAcceleration accRef;
//    accRef.x = acc.x*rot.m11 + acc.y*rot.m12 + acc.z*rot.m13;
//    accRef.y = acc.x*rot.m21 + acc.y*rot.m22 + acc.z*rot.m23;
//    accRef.z = acc.x*rot.m31 + acc.y*rot.m32 + acc.z*rot.m33;
    
    accRef.x = acc.x*rot.m11 + acc.y*rot.m21 + acc.z*rot.m31;
    accRef.y = acc.x*rot.m12 + acc.y*rot.m22 + acc.z*rot.m32;
    accRef.z = acc.x*rot.m13 + acc.y*rot.m23 + acc.z*rot.m33;
    
    return accRef;
}

@end
