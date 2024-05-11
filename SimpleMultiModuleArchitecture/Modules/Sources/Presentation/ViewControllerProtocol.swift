// Created by okazakishinya on 2024/02/03.

import UIKit

public protocol ViewControllerProtocol: UIViewController {
    func addFullScreenChildViewController(_ childViewController: UIViewController)
}

extension ViewControllerProtocol {
    public func addFullScreenChildViewController(_ childViewController: UIViewController) {
        guard let childView = childViewController.view else { return }
        addChild(childViewController)
        childView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(childView)
        NSLayoutConstraint.activate([
            self.view.topAnchor.constraint(equalTo: childView.topAnchor),
            self.view.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            self.view.trailingAnchor.constraint(equalTo: childView.trailingAnchor),
            self.view.bottomAnchor.constraint(equalTo: childView.bottomAnchor),
        ])
        childViewController.didMove(toParent: self)
    }
}
