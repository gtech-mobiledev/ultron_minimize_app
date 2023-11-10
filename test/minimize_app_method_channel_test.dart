import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minimize_app/minimize_app_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMinimizeApp platform = MethodChannelMinimizeApp();
  const MethodChannel channel = MethodChannel('minimize_app');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return;
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('minimizeApp', () async {
    expect(
      () async => await platform.minimizeApp(),
      isA<void>(),
    );
  });
}
