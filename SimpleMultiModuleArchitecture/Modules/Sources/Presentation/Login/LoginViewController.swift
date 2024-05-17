// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol LoginViewControllerProtocol: UIViewController, ViewControllerProtocol {}

public class LoginViewController<Presenter: LoginPresentation>: UIViewController, LoginViewControllerProtocol {

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

        addFullScreenChildViewController(UIHostingController(rootView: LoginView(presenter: presenter)))
    }
}
