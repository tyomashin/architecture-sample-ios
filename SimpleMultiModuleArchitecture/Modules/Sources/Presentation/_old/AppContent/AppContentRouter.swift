// Created by okazakishinya on 2024/02/17.

import UIKit

public protocol AppContentWireframe: WireframeProtocol {}

public class AppContentRouter: AppContentWireframe {
    public weak var viewController: UIViewController?

    public init() {}
}
