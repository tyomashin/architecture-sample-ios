// Created by okazakishinya on 2024/05/18.

import UIKit

public protocol QAModalWireframe: WireframeProtocol {
    func close(with index: Int)
}

public class QAModalRouter: QAModalWireframe {
    public weak var viewController: UIViewController?
    let selectIndex: (Int) -> Void

    public init(selectIndex: @escaping (Int) -> Void) {
        self.selectIndex = selectIndex
    }

    public func close(with index: Int) {
        viewController?.dismiss(animated: true) { [weak self] in
            self?.selectIndex(index)
        }
    }
}
