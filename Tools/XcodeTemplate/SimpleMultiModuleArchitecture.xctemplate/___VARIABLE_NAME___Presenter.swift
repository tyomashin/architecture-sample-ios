//___FILEHEADER___

import SwiftUI
import Combine

public protocol ___VARIABLE_NAME___Presentation: PresentationProtocol where ViewState == ___VARIABLE_NAME___ViewState {}

public struct ___VARIABLE_NAME___ViewState {}

public class ___VARIABLE_NAME___Presenter<Router: ___VARIABLE_NAME___Wireframe>: ___VARIABLE_NAME___Presentation {
    public let router: Router
    
    @Published private(set) public var viewState: ___VARIABLE_NAME___ViewState

    public init(router: Router) {
        self.viewState = .init()
        self.router = router
    }
}
