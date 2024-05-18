// Created by okazakishinya on 2024/05/18.

import Dependencies

public typealias QAModalViewControllerCreator = @MainActor (_ selectIndex: @escaping (Int) -> Void) -> any QAModalViewControllerProtocol

public enum QAModalViewControllerKey: DependencyKey {
    public static var liveValue: QAModalViewControllerCreator = { closure in
        let router = QAModalRouter(selectIndex: closure)
        let presenter = QAModalPresenter(router: router)
        let viewController = QAModalViewController(presenter: presenter)
        router.viewController = viewController
        return viewController
    }
}

extension DependencyValues {
    public var createQAModalViewController: QAModalViewControllerCreator {
        get { self[QAModalViewControllerKey.self] }
        set { self[QAModalViewControllerKey.self] = newValue }
    }
}
