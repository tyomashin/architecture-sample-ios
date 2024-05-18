// Created by okazakishinya on 2024/05/18.

import Dependencies
import UIKit

public protocol LoginWireframe: WireframeProtocol {
    func presentQAModal(selectIndex: @escaping (Int) -> Void)
}

public class LoginRouter: LoginWireframe {
    public weak var viewController: UIViewController?

    public init() {}

    public func presentQAModal(selectIndex: @escaping (Int) -> Void) {
        @Dependency(\.createQAModalViewController) var createViewController
        let vc = createViewController(selectIndex)
        vc.modalPresentationStyle = .pageSheet
        viewController?.present(UINavigationController(rootViewController: vc), animated: true)
    }
}
