// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol SettingsViewControllerProtocol: UIViewController, ViewControllerProtocol {}

public class SettingsViewController<Presenter: SettingsPresentation>: UIViewController, SettingsViewControllerProtocol {

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

        self.title = "設定画面"

        addFullScreenChildViewController(UIHostingController(rootView: SettingsView(presenter: presenter)))
    }
}
