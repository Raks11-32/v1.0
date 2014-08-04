//
//  AppDelegate.h
//  Rack
//
//  Created by MacBookPro on 31/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class SecondWindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IBOutlet SecondWindowController *segundaventana;
}


@property (assign) IBOutlet NSWindow *window;

- (IBAction)SubVentana:(id)sender;

@end
