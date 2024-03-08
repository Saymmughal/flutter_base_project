import UIKit
import Flutter
// Import these as required
// import FirebaseCore
// import GoogleMaps
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // For Firebase Configuration
//    FirebaseApp.configure()
    // For Google Maps (Replace API_Key with provided key)
    // GMSServices.provideAPIKey("API_Key")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
