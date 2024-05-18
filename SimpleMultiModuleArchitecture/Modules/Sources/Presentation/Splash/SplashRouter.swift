// Created by okazakishinya on 2024/05/18.

import Dependencies
import UIKit

public protocol SplashWireframe: WireframeProtocol {
    func presentLogin()
}

public class SplashRouter: SplashWireframe {
    public weak var viewController: UIViewController?

    public init() {}

    deinit {
        print("deinit SplashRouter")
    }

    public func presentLogin() {
        @Dependency(\.appRootViewController) var appRootViewController
        appRootViewController.presenter.presentLogin()
    }
}
