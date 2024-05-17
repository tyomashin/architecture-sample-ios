// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol SplashPresentation: PresentationProtocol where ViewState == SplashViewState {}

public struct SplashViewState {}

public class SplashPresenter<Router: SplashWireframe>: SplashPresentation {
    public let router: Router

    @Published private(set) public var viewState: SplashViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
