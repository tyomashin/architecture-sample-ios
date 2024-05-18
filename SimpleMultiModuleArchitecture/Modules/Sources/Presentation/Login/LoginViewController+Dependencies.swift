// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias LoginViewControllerCreator = @MainActor () -> any LoginViewControllerProtocol

public enum LoginViewControllerKey: DependencyKey {
    public static var liveValue: LoginViewControllerCreator = {
        let router = LoginRouter()
        let presenter = LoginPresenter(router: router)
        let viewController = LoginViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var createLoginViewController: LoginViewControllerCreator {
        get { self[LoginViewControllerKey.self] }
        set { self[LoginViewControllerKey.self] = newValue }
    }
}
