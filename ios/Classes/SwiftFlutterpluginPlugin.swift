import Flutter
import UIKit

public class SwiftFlutterpluginPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterplugin.github.com/flutterplugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterpluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
    if([@get"getsomething" isEqualToString:call.method]){
     result("It work on iOS " + UIDevice.current.systemVersion)
     }else
    if()
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
