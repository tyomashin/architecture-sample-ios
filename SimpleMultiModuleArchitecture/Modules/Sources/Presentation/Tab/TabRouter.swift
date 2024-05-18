// Created by okazakishinya on 2024/05/18.

import Common
import Dependencies
import UIKit

public protocol TabWireframe: WireframeProtocol {
    func setupTabs()
}

public class TabRouter: TabWireframe {
    public weak var tabBarController: UITabBarController?

    public init() {}

    public func setupTabs() {
        @Dependency(\.createHomeViewController) var createHomeViewController
        let homeVC = createHomeViewController()
        @Dependency(\.createSettingsViewController) var createSettingsViewController
        let settingsVC = createSettingsViewController()

        homeVC.tabBarItem = UITabBarItem(title: L10n.Tab.Home.title, image: UIImage(systemName: "tag"), tag: 0)
        settingsVC.tabBarItem = UITabBarItem(title: L10n.Tab.Settings.title, image: UIImage(systemName: "folder"), tag: 1)
        tabBarController?.viewControllers = [
            UINavigationController(rootViewController: homeVC),
            UINavigationController(rootViewController: settingsVC),
        ]
    }
}
