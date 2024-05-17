// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias SplashViewControllerCreator = @MainActor () -> any SplashViewControllerProtocol

public enum SplashViewControllerKey: DependencyKey {
    public static var liveValue: SplashViewControllerCreator = {
        let router = SplashRouter()
        let presenter = SplashPresenter(router: router)
        let viewController = SplashViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var createSplashViewController: SplashViewControllerCreator {
        get { self[SplashViewControllerKey.self] }
        set { self[SplashViewControllerKey.self] = newValue }
    }
}
