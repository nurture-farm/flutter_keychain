import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class FlutterKeychain {
  static const MethodChannel _channel = const MethodChannel('plugin.appmire.be/flutter_keychain');

  // put - store the value for a key.
  static Future<void> put({@required String key, @required String value}) async {
    try {
      if (Platform.isIOS) {
        await _channel.invokeMethod('put', {'key': key, 'value': value});
      }
    } catch (e) {}
  }

  // get - get the value for a given key
  static Future<String> get({@required String key}) async {
    try {
      if (Platform.isIOS) {
        await _channel.invokeMethod('get', {'key': key});
      }
    } catch (e) {}
  }

  // remove - remove entry for a given key
  static Future<void> remove({@required String key}) async {
    try {
      if (Platform.isIOS) {
        await _channel.invokeMethod('remove', {'key': key});
      }
    } catch (e) {}
  }

  // clear - clear the keychain
  static Future<void> clear() async {
    try {
      if (Platform.isIOS) {
        await _channel.invokeMethod('clear');
      }
    } catch (e) {}
  }
}
