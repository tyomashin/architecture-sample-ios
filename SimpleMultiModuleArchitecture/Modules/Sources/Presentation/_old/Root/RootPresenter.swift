// Created by okazakishinya on 2024/02/04.

import Combine
import SwiftUI

public protocol RootPresentation: PresentationProtocol where ViewState == RootViewState {
    // MARK: ViewState の変更検知したい場合は、以下のように検知したいプロパティの AnyPublisher を定義する
    // var isLoadingPublisher: AnyPublisher<Bool, Never> { get }
}

public struct RootViewState {
    var isLoading = false
}

public class RootPresenter<Router: RootWireframe>: RootPresentation {
    public let router: Router

    @Published private(set) public var viewState: RootViewState
    // MARK: ViewState の変更検知したい場合は、以下のように検知したいプロパティの AnyPublisher を作成する
    //    public var isLoadingPublisher: AnyPublisher<Bool, Never> {
    //        $viewState.map(\.isLoading).removeDuplicates().eraseToAnyPublisher()
    //    }

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
