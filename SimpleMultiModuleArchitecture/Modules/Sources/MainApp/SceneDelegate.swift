// Created by okazakishinya on 2024/02/03.

import UIKit
import Presentation

open class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    public var window: UIWindow?
 
    public func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("scenedelegate willConnectTo")
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        self.window = window

        window.rootViewController = RootViewController(presenter: RootPresenter())
        window.makeKeyAndVisible()
    }
}
