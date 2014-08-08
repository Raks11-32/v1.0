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
    /*Color de fondo*/
    NSColor *color =[NSColor colorWithDeviceRed:0.0f green:0.0f blue:0.0f alpha:0.7f];
    [_window setOpaque:NO];
    [_window setBackgroundColor:color];
    
    /*Cambiamos el tamaño*/
    float anchoWindow = _window.screen.frame.size.width;
    float altoWindow = _window.screen.frame.size.height;
    [_window setFrame:NSMakeRect(0.f, 0.f, anchoWindow, altoWindow) display:YES animate:YES];
    
    /*Posicionamos Ventana*/
    //Creamos un punto que marcará la nueva posición
    NSPoint posicion;
    posicion.x = 0;
    posicion.y = 0;
    
    //Obtenemos los bordes de nuestra pantalla y se los asignamos al punto
    posicion.x = 0;
    posicion.y = altoWindow;

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
