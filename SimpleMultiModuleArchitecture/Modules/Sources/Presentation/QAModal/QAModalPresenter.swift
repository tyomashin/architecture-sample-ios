// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol QAModalPresentation: PresentationProtocol where ViewState == QAModalViewState {
    func tapItem(_ index: Int)
}

public struct QAModalViewState {}

public class QAModalPresenter<Router: QAModalWireframe>: QAModalPresentation {

    public let router: Router

    @Published private(set) public var viewState: QAModalViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }

    public func tapItem(_ index: Int) {
        router.close(with: index)
    }
}
