import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:ultron_minimize_app/minimize_app_method_channel.dart';
import 'package:ultron_minimize_app/minimize_app_platform_interface.dart';
import 'package:ultron_minimize_app/ultron_minimize_app.dart';

class MockMinimizeAppPlatform
    with MockPlatformInterfaceMixin
    implements MinimizeAppPlatform {
  @override
  Future<void> minimizeApp() => Future.value();
}

void main() {
  final initialPlatform = MinimizeAppPlatform.instance;

  test('$MethodChannelMinimizeApp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMinimizeApp>());
  });

  test('minimizeApp', () async {
    final fakePlatform = MockMinimizeAppPlatform();
    MinimizeAppPlatform.instance = fakePlatform;

    expect(MinimizeApp.minimize(), isA<Future<void>>());
  });
}
