//___FILEHEADER___

import Dependencies

public typealias ___VARIABLE_NAME___ViewControllerCreator = @MainActor () -> any ___VARIABLE_NAME___ViewControllerProtocol

public enum ___VARIABLE_NAME___ViewControllerKey: DependencyKey {
    public static var liveValue: ___VARIABLE_NAME___ViewControllerCreator = {
        let router = ___VARIABLE_NAME___Router()
        let presenter = ___VARIABLE_NAME___Presenter(router: router)
        let viewController = ___VARIABLE_NAME___ViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var create___VARIABLE_NAME___ViewController: ___VARIABLE_NAME___ViewControllerCreator {
        get { self[___VARIABLE_NAME___ViewControllerKey.self] }
        set { self[___VARIABLE_NAME___ViewControllerKey.self] = newValue }
    }
}
