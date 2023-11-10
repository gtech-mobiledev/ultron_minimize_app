import 'package:flutter_test/flutter_test.dart';
import 'package:minimize_app/minimize_app.dart';
import 'package:minimize_app/minimize_app_platform_interface.dart';
import 'package:minimize_app/minimize_app_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMinimizeAppPlatform
    with MockPlatformInterfaceMixin
    implements MinimizeAppPlatform {
  @override
  Future<void> minimizeApp() => Future.value();
}

void main() {
  final MinimizeAppPlatform initialPlatform = MinimizeAppPlatform.instance;

  test('$MethodChannelMinimizeApp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMinimizeApp>());
  });

  test('getPlatformVersion', () async {
    MinimizeApp minimizeAppPlugin = MinimizeApp();
    MockMinimizeAppPlatform fakePlatform = MockMinimizeAppPlatform();
    MinimizeAppPlatform.instance = fakePlatform;

    expect(minimizeAppPlugin.minimizeApp(), isA<Future<void>>());
  });
}
