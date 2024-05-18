// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol QAModalViewControllerProtocol: UIViewController, ViewControllerProtocol {}

public class QAModalViewController<Presenter: QAModalPresentation>: UIViewController, QAModalViewControllerProtocol {

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

        addFullScreenChildViewController(UIHostingController(rootView: QAModalView(presenter: presenter)))
    }
}
