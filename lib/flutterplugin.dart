import 'dart:async';

import 'package:flutter/services.dart';

class Flutterplugin {
  static const MethodChannel _channel = const MethodChannel('flutterplugin.github.com/flutterplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> get something async {
    final String version = await _channel.invokeMethod('getsomething');
    return version;
  }
}
