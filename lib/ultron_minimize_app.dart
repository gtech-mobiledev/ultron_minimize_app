import 'package:ultron_minimize_app/minimize_app_platform_interface.dart';

class MinimizeApp {
  static Future<void> minimize() {
    return MinimizeAppPlatform.instance.minimizeApp();
  }
}
