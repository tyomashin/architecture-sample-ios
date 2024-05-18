// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol HomeViewControllerProtocol: UIViewController, ViewControllerProtocol {}

public class HomeViewController<Presenter: HomePresentation>: UIViewController, HomeViewControllerProtocol {

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

        self.title = "ホーム画面"

        addFullScreenChildViewController(UIHostingController(rootView: HomeView(presenter: presenter)))
    }
}
