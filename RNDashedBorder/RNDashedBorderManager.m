//
//  RNDashedBorderManager.m
//  RNDashedBorder
//
//  Created by Chirag Jain on 5/7/15.
//  Copyright (c) 2015 Chirag Jain. All rights reserved.
//

#import "RNDashedBorderManager.h"
#import "RNDashedBorder.h"
#import "RCTBridge.h"

@implementation RNDashedBorderManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
    return [[RNDashedBorder alloc] init];
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(color, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(lineWidth, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(lineDashPattern, NSArray);

@end
