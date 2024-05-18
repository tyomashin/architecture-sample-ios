// Created by okazakishinya on 2024/05/18.

import Combine
import SwiftUI

public protocol SettingsPresentation: PresentationProtocol where ViewState == SettingsViewState {}

public struct SettingsViewState {}

public class SettingsPresenter<Router: SettingsWireframe>: SettingsPresentation {
    public let router: Router

    @Published private(set) public var viewState: SettingsViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
