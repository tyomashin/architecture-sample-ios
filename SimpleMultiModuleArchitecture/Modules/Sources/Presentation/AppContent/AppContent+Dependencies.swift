// Created by okazakishinya on 2024/03/03.

import Dependencies

public typealias AppContentViewControllerCreator = @MainActor () -> any AppContentViewControllerProtocol

public enum AppContentViewControllerKey: DependencyKey {
    public static var liveValue: AppContentViewControllerCreator = {
        let router = AppContentRouter()
        let presenter = AppContentPresenter(router: router)
        let viewController = AppContentViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var appContentViewControllerCreator: AppContentViewControllerCreator {
        get { self[AppContentViewControllerKey.self] }
        set { self[AppContentViewControllerKey.self] = newValue }
    }
}
