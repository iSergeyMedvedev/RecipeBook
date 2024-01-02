import UIKit
import RecipeBookKit
import RecipeBookUI

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        RecipeBookKit.hello()
        RecipeBookUI.hello()

        return true
    }

}
