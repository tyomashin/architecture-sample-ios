// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias HomeViewControllerCreator = @MainActor () -> any HomeViewControllerProtocol

public enum HomeViewControllerKey: DependencyKey {
    public static var liveValue: HomeViewControllerCreator = {
        let router = HomeRouter()
        let presenter = HomePresenter(router: router)
        let viewController = HomeViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var createHomeViewController: HomeViewControllerCreator {
        get { self[HomeViewControllerKey.self] }
        set { self[HomeViewControllerKey.self] = newValue }
    }
}
