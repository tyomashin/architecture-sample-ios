// Created by okazakishinya on 2024/05/18.

import Dependencies

public enum AppRootViewControllerKey: DependencyKey {
    @MainActor public static var liveValue: AppRootViewController<AppRootPresenter<AppRootRouter>> {
        let router = AppRootRouter()
        let presenter = AppRootPresenter(router: router)
        let viewController = AppRootViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var appRootViewController: AppRootViewController<AppRootPresenter<AppRootRouter>> {
        get { self[AppRootViewControllerKey.self] }
        set { self[AppRootViewControllerKey.self] = newValue }
    }
}
