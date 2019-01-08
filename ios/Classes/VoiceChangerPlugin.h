#import <Flutter/Flutter.h>
#import "FMPlayer.h"

@interface VoiceChangerPlugin : NSObject<FlutterPlugin>
      @property (nonatomic, strong) FMPlayer *player;
      @property (nonatomic, strong) NSArray<FMPlayerOption *> *audioOptions;
@end
