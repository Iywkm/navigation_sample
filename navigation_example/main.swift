import UIKit

func launchApplication(delegateClassName: String) {
    let _ = UIApplicationMain(
        CommandLine.argc,
        CommandLine.unsafeArgv,
        NSStringFromClass(UIApplication.self),
        delegateClassName
    )
}

var isRunningTests: Bool {
    get {
        return NSClassFromString("XCTestCase") != nil
    }
}

final class TestingAppDelegate: UIApplication, UIApplicationDelegate {}

if isRunningTests {
    launchApplication(delegateClassName: NSStringFromClass(TestingAppDelegate.self))
} else {
    launchApplication(delegateClassName: NSStringFromClass(AppDelegate.self))
}
