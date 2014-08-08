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
    NSColor *color =[NSColor colorWithDeviceRed:1 green:1 blue:1 alpha:.1];
    [_window setOpaque:NO];
    [_window setBackgroundColor:color];
    
    //Creamos un punto que marcará la nueva posición
    NSPoint posicion;
    posicion.x = 0;
    posicion.y = 0;
    
    //Obtenemos los bordes de nuestra pantalla y se los asignamos al punto
    //posicion.x = _window.screen.frame.size.height;
    posicion.x = 0;
    posicion.y = _window.screen.frame.size.width;

    //Modificamos el inicio de la ventana que sea arriba a la izquierda
    [_window setFrameTopLeftPoint:posicion];
}

- (IBAction)SubVentana:(id)sender {
    if(segundaventana==nil)
    {
     segundaventana=[[SecondWindowController alloc] initWithWindowNibName:@"SegundaVentana"];
    
    }
    
    [segundaventana showWindow:self];
    
}
@end
