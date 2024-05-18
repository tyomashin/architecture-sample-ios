// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol TabPresentation: PresentationProtocol where ViewState == TabViewState {
    func viewDidLoad()
}

public struct TabViewState {}

public class TabPresenter<Router: TabWireframe>: TabPresentation {
    public let router: Router

    @Published private(set) public var viewState: TabViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }

    public func viewDidLoad() {}
}
