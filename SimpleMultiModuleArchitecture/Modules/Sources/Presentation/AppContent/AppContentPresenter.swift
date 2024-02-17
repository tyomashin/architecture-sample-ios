// Created by okazakishinya on 2024/02/17.

import SwiftUI
import Combine

public protocol AppContentPresentation: PresentationProtocol where ViewState == AppContentViewState {}

public struct AppContentViewState {}

public class AppContentPresenter<Router: AppContentWireframe>: AppContentPresentation {
    public let router: Router
    
    @Published private(set) public var viewState: AppContentViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
