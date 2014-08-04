//
//  AppDelegate.m
//  Rack
//
//  Created by MacBookPro on 31/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondWindowController.h"

@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSColor *color =[NSColor colorWithDeviceRed:1 green:1 blue:1 alpha:.6];
    [_window setOpaque:NO];
    [_window setBackgroundColor:color];
}

- (IBAction)SubVentana:(id)sender {
    if(segundaventana==nil)
    {
     segundaventana=[[SecondWindowController alloc] initWithWindowNibName:@"SegundaVentana"];
    
    }
    
    [segundaventana showWindow:self];
    
}
@end
