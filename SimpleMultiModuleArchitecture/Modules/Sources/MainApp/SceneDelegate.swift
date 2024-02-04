// Created by okazakishinya on 2024/02/03.

import UIKit

open class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    public var window: UIWindow?
 
    public func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("scenedelegate willConnectTo")
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        self.window = window


        // TODO: ルート画面を設定する
        let vc = UIViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
}
