// Created by okazakishinya on 2024/05/18.

import SwiftUI
import UIKit

public protocol AppRootViewControllerProtocol: UIViewController, ViewControllerProtocol {
    /// 子画面をセットする
    func setChild(_ viewController: UIViewController)
}

/// アプリのルート画面
public class AppRootViewController<Presenter: AppRootPresentation>: UIViewController, AppRootViewControllerProtocol {

    let presenter: Presenter
    weak var childVC: UIViewController?

    public init(presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red

        presenter.viewDidLoad()
    }

    public func setChild(_ viewController: UIViewController) {
        guard let childVC = childVC else {
            // 子画面がいない場合
            wrap(viewController)
            self.childVC = viewController
            return
        }

        // 子画面がいる場合、置換する
        replace(from: childVC, to: viewController)
        self.childVC = viewController
    }

    private func wrap(_ viewController: UIViewController) {
        guard let childView = viewController.view else { return }
        addChild(viewController)
        childView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(childView)
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: childView.topAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: childView.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: childView.trailingAnchor),
        ])
        viewController.didMove(toParent: self)
    }

    private func replace(from: UIViewController, to: UIViewController) {
        guard let toView = to.view else { return }
        from.dismiss(animated: true)
        from.willMove(toParent: nil)
        addChild(to)
        toView.translatesAutoresizingMaskIntoConstraints = false

        transition(from: from, to: to, duration: 0.25, options: [.transitionCrossDissolve]) { [weak self] in
            guard let self = self else { return }
            NSLayoutConstraint.activate([
                self.view.topAnchor.constraint(equalTo: toView.topAnchor),
                self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: toView.bottomAnchor),
                self.view.leadingAnchor.constraint(equalTo: toView.leadingAnchor),
                self.view.trailingAnchor.constraint(equalTo: toView.trailingAnchor),
            ])
        } completion: { [weak self] _ in
            guard let self = self else { return }
            from.view.removeFromSuperview()
            from.removeFromParent()
            to.didMove(toParent: self)
        }
    }
}
