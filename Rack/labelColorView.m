//
//  labelColorView.m
//  Rack
//
//  Created by guitarrkurt on 07/08/14.
//  Copyright (c) 2014 guitarrkurt. All rights reserved.
//

#import "labelColorView.h"

@implementation labelColorView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    CGContextRef context = (CGContextRef)[[NSGraphicsContext currentContext] graphicsPort];
    CGContextSetRGBFillColor(context, 1, 0, 0, 0.5); //Color y transparencia del label
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
}

@end
