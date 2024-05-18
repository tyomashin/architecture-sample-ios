// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol LoginPresentation: PresentationProtocol where ViewState == LoginViewState {
    func tapLoginButton()
    func tapQAModalButton()
}

public struct LoginViewState {
    var index: Int?
}

public class LoginPresenter<Router: LoginWireframe>: LoginPresentation {
    public let router: Router

    @Published private(set) public var viewState: LoginViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }

    deinit {
        print("deinit LoginPresenter")
    }

    public func tapLoginButton() {
        router.presentTab()
    }

    public func tapQAModalButton() {
        router.presentQAModal(selectIndex: selectedIndex)
    }

    public func selectedIndex(_ index: Int) {
        viewState.index = index
    }
}
