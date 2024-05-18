// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias TabViewControllerCreator = @MainActor () -> any TabViewControllerProtocol

public enum TabViewControllerKey: DependencyKey {
    public static var liveValue: TabViewControllerCreator = {
        let router = TabRouter()
        let presenter = TabPresenter(router: router)
        let viewController = TabViewController(presenter: presenter)
        router.tabBarController = viewController
        router.setupTabs()
        return viewController
    }
}

extension DependencyValues {
    public var createTabViewController: TabViewControllerCreator {
        get { self[TabViewControllerKey.self] }
        set { self[TabViewControllerKey.self] = newValue }
    }
}
