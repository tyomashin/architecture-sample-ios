// Created by okazakishinya on 2024/05/18.

import Common
import SwiftUI
import UIKit

public protocol TabViewControllerProtocol: UITabBarController {}

public class TabViewController<Presenter: TabPresentation>: UITabBarController, TabViewControllerProtocol {

    let presenter: Presenter

    public init(presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blue

        // タブバーの背景色、アクティブ時・非アクティブ時の色
        self.tabBar.backgroundColor = Colors.baseWhite.color
        self.tabBar.tintColor = Colors.baseGreen.color
        self.tabBar.unselectedItemTintColor = Colors.placeholder.color

        presenter.viewDidLoad()
    }
}
