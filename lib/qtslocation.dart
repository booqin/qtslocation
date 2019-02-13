import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:qtslocation/model/AMapLocation.dart';

class Qtslocation {
  static const MethodChannel _channel =
      const MethodChannel('qtslocation');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<AMapLocation> get location async{
    final String result = await _channel.invokeMethod("getLocation");
    print(result);
    return AMapLocation.fromJson(json.decode(result));
  }
}
