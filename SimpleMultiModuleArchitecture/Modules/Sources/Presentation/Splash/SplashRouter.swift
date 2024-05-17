// Created by okazakishinya on 2024/05/18.

import UIKit

public protocol SplashWireframe: WireframeProtocol {}

public class SplashRouter: SplashWireframe {
    public weak var viewController: UIViewController?

    public init() {

    }
}
