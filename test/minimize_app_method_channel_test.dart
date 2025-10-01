import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ultron_minimize_app/minimize_app_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelMinimizeApp();
  const channel = MethodChannel('minimize_app');

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
      () async => platform.minimizeApp(),
      isA<void>(),
    );
  });
}
