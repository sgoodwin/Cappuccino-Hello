/*
 * AppController.j
 * HelloWorld
 *
 * Created by You on October 19, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
    CPString    helloString @accessors;
    CPArray     hellos @accessors;
    int         i;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
    [self setHellos:[CPArray arrayWithObjects:@"HEY SUP?", @"SUP?", @"HEY DUDE", @"HI", nil]];
    i = 0;
}

- (IBAction)sayHello:(id)sender{
    var string = [[self hellos] objectAtIndex:i];
    [self setHelloString:string];
    i++;
    if(i >= [[self hellos] count]){
        i = 0;
    }
}

@end
