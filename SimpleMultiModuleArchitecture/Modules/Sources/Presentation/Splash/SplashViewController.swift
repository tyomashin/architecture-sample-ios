// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol SplashViewControllerProtocol: UIViewController, ViewControllerProtocol {}

public class SplashViewController<Presenter: SplashPresentation>: UIViewController, SplashViewControllerProtocol {

    let presenter: Presenter

    public init(presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        print("deinit SplashViewController")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        addFullScreenChildViewController(UIHostingController(rootView: SplashView(presenter: presenter)))

        presenter.viewDidLoad()
    }
}
