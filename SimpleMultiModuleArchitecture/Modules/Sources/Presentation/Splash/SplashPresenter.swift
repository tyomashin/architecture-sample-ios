// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol SplashPresentation: PresentationProtocol where ViewState == SplashViewState {
    func viewDidLoad()
}

public struct SplashViewState {}

public class SplashPresenter<Router: SplashWireframe>: SplashPresentation {
    public let router: Router

    @Published private(set) public var viewState: SplashViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }

    deinit {
        print("deinit SplashPresenter")
    }

    public func viewDidLoad() {
        Task {
            try await Task.sleep(until: .now + .seconds(1))
            router.presentLogin()
        }
    }
}
