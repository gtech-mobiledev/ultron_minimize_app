import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:minimize_app/minimize_app_platform_interface.dart';

/// An implementation of [MinimizeAppPlatform] that uses method channels.
class MethodChannelMinimizeApp extends MinimizeAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('minimize_app');

  @override
  Future<void> minimizeApp() async {
    await methodChannel.invokeMethod<String>('minimizeApp');
  }
}
