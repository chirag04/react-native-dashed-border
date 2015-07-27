//
//  RNDashedBorder.m
//  RNDashedBorder
//
//  Created by Chirag Jain on 5/7/15.
//  Copyright (c) 2015 Chirag Jain. All rights reserved.
//

#import "RNDashedBorder.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

// This function copied from
// http://stackoverflow.com/questions/12134608/cashapelayer-cornerradius-isnt-working-on-uibezierpath
CGPathRef CGPathCreateRoundRect( const CGRect r, const CGFloat cornerRadius )
{
  CGMutablePathRef p = CGPathCreateMutable() ;

  CGPathMoveToPoint( p, NULL, r.origin.x + cornerRadius, r.origin.y ) ;

  CGFloat maxX = CGRectGetMaxX( r ) ;
  CGFloat maxY = CGRectGetMaxY( r ) ;

  CGPathAddArcToPoint( p, NULL, maxX, r.origin.y, maxX, r.origin.y + cornerRadius, cornerRadius ) ;
  CGPathAddArcToPoint( p, NULL, maxX, maxY, maxX - cornerRadius, maxY, cornerRadius ) ;

  CGPathAddArcToPoint( p, NULL, r.origin.x, maxY, r.origin.x, maxY - cornerRadius, cornerRadius ) ;
  CGPathAddArcToPoint( p, NULL, r.origin.x, r.origin.y, r.origin.x + cornerRadius, r.origin.y, cornerRadius ) ;

  return p ;
}

@implementation RNDashedBorder {
  CAShapeLayer *_border;
}

- (instancetype)init
{
  if ((self = [super init])) {
    _border = [CAShapeLayer layer];
    _border.fillColor = nil;
    [self.layer addSublayer:_border];
  }

  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  //if borderRadius is zero, the shape will be rectangle - dashed.
  _border.path = CGPathCreateRoundRect(self.bounds, self.borderRadius);
  _border.frame = self.bounds;
}

- (void)setColor:(NSString *)colorString
{
  _border.strokeColor = [RCTConvert UIColor:colorString].CGColor;
}

- (void)setLineDashPattern:(NSArray *)pattern
{
  _border.lineDashPattern = pattern;
}

@end
