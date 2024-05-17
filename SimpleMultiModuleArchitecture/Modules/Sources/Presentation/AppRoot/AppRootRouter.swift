// Created by okazakishinya on 2024/05/18.

import Dependencies
import UIKit

@MainActor public protocol AppRootWireframe {
    /// スプラッシュ画面を表示
    func presentSplash()
    /// ログイン画面を表示
    func presentLogin()
    /// タブ画面を表示
    func presentTab()
}

public class AppRootRouter: AppRootWireframe {
    public weak var viewController: AppRootViewControllerProtocol?

    public init() {}

    public func presentSplash() {
        print("presentSplash")
        @Dependency(\.createSplashViewController) var createViewController
        let vc = createViewController()
        viewController?.setChild(vc)
    }

    public func presentLogin() {
        print("presentLogin")
        @Dependency(\.createLoginViewController) var createViewController
        let vc = createViewController()
        viewController?.setChild(vc)
    }

    public func presentTab() {
        print("presentTab")
    }
}
