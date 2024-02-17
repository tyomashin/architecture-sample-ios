// Created by okazakishinya on 2024/02/17.

import UIKit

public protocol RootWireframe: WireframeProtocol {}

public class RootRouter: RootWireframe {
    public weak var viewController: UIViewController?
    
    public init() {}
}
