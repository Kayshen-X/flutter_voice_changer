import 'dart:async';

import 'package:flutter/services.dart';


class VoiceChangerPlugin {
  static const MethodChannel _channel =
      const MethodChannel('voice_changer_plugin/methods');

  //变声方法(changeVoiceMethod)
  //path(路径) type (类型)
  //type:0 normal(原声) 1 lorie(萝莉) 2 terror(恐怖) 3 uncle(大叔)4 funny(搞怪) 5 vacant(空灵)
  static Future<void> change(path, type) async {
    await _channel.invokeMethod('change', {"path": path, "type": type});
  }
}
