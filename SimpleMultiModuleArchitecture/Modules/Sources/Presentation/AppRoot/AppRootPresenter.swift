// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol AppRootPresentation: PresentationProtocol where ViewState == AppRootViewState {
    func viewDidLoad()
}

public struct AppRootViewState {}

public class AppRootPresenter<Router: AppRootWireframe>: AppRootPresentation {
    public let router: Router

    @Published private(set) public var viewState: AppRootViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }

    public func viewDidLoad() {
        router.presentSplash()
        /*
        Task {
            try await Task.sleep(until: .now + .seconds(1))
            router.presentSplash()
        }
         */
    }
}
