/********* AKContactPicker.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface AKContactPicker : CDVPlugin {
  // Member variables go here.
}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;

@end

@implementation AKContactPicker

// - (void)coolMethod:(CDVInvokedUrlCommand*)command
// {
//     CDVPluginResult* pluginResult = nil;
//     NSString* echo = [command.arguments objectAtIndex:0];

//     if (echo != nil && [echo length] > 0) {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//     } else {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//     }

//     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
// }

- (void)add:(CDVInvokedUrlCommand*)command {
    NSLog("Vlaue here is ===%@",command);
    CDVPluginResult *ploginResult = nil;
    if ([command.arguments length] > 0) {
        NSNumber *param1 = [[command.parameters objectAtIndex:0] valueForKey:@"param1"];
        NSNumber *param2 = [[command.parameters objectAtIndex:1]valueForKey:@"param2"];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[NSString stringWithFormat:@"%d",param1+param2]];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
}

@end
