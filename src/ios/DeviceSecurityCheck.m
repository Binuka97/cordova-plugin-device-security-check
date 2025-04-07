#import <Cordova/CDV.h>
#import <LocalAuthentication/LocalAuthentication.h>

@interface DeviceSecurityCheck : CDVPlugin
- (void)isDeviceSecure:(CDVInvokedUrlCommand*)command;
@end

@implementation DeviceSecurityCheck

- (void)isDeviceSecure:(CDVInvokedUrlCommand*)command {
    LAContext *context = [[LAContext alloc] init];
    NSError *error = nil;

    BOOL canEvaluate = [context canEvaluatePolicy:LAPolicyDeviceOwnerAuthentication error:&error];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                      messageAsBool:canEvaluate];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
