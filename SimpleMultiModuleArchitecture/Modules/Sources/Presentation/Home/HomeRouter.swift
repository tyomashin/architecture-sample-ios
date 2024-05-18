// Created by okazakishinya on 2024/05/18.

import UIKit

public protocol HomeWireframe: WireframeProtocol {}

public class HomeRouter: HomeWireframe {
    public weak var viewController: UIViewController?

    public init() {}
}
