import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'minimize_app_method_channel.dart';

abstract class MinimizeAppPlatform extends PlatformInterface {
  /// Constructs a MinimizeAppPlatform.
  MinimizeAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static MinimizeAppPlatform _instance = MethodChannelMinimizeApp();

  /// The default instance of [MinimizeAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelMinimizeApp].
  static MinimizeAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MinimizeAppPlatform] when
  /// they register themselves.
  static set instance(MinimizeAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> minimizeApp();
}
