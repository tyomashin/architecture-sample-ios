// Created by okazakishinya on 2024/05/18.

import UIKit

public protocol LoginWireframe: WireframeProtocol {}

public class LoginRouter: LoginWireframe {
    public weak var viewController: UIViewController?

    public init() {}
}
