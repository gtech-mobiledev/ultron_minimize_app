import Flutter
import UIKit

public class MinimizeAppPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "minimize_app", binaryMessenger: registrar.messenger())
    let instance = MinimizeAppPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "minimizeApp":
       UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
