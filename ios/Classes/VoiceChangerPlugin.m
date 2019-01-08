#import "VoiceChangerPlugin.h"

@implementation VoiceChangerPlugin
  
    
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"voice_changer_plugin/methods"
                                     binaryMessenger:[registrar messenger]];
    VoiceChangerPlugin* instance = [[VoiceChangerPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"change" isEqualToString:call.method]) {
        self.audioOptions = [FMPlayerOption defaultOptions];
        NSString *path = call.arguments[@"path"];
        NSNumber *type=call.arguments[@"type"];
        if (self.player) {
            [self.player stop];
        }
        self.player = [[FMPlayer alloc] initWithPath:path option:self.audioOptions[type.intValue]];
        [self.player play];
        
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
