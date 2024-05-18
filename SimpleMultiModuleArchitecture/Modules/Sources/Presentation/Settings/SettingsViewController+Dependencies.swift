// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias SettingsViewControllerCreator = @MainActor () -> any SettingsViewControllerProtocol

public enum SettingsViewControllerKey: DependencyKey {
    public static var liveValue: SettingsViewControllerCreator = {
        let router = SettingsRouter()
        let presenter = SettingsPresenter(router: router)
        let viewController = SettingsViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var createSettingsViewController: SettingsViewControllerCreator {
        get { self[SettingsViewControllerKey.self] }
        set { self[SettingsViewControllerKey.self] = newValue }
    }
}
