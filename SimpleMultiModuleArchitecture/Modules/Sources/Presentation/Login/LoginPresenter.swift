// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol LoginPresentation: PresentationProtocol where ViewState == LoginViewState {}

public struct LoginViewState {}

public class LoginPresenter<Router: LoginWireframe>: LoginPresentation {
    public let router: Router

    @Published private(set) public var viewState: LoginViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
