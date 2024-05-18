// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol HomePresentation: PresentationProtocol where ViewState == HomeViewState {}

public struct HomeViewState {}

public class HomePresenter<Router: HomeWireframe>: HomePresentation {
    public let router: Router

    @Published private(set) public var viewState: HomeViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
