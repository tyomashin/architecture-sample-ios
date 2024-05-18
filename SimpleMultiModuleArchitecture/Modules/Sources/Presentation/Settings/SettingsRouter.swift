// Created by okazakishinya on 2024/05/18.

import UIKit

public protocol SettingsWireframe: WireframeProtocol {}

public class SettingsRouter: SettingsWireframe {
    public weak var viewController: UIViewController?

    public init() {}
}
