// Created by okazakishinya on 2024/02/17.

import Dependencies
import SwiftUI
import UIKit

public protocol AppContentViewControllerProtocol: UIViewController, ViewControllerProtocol {}

/// アプリのコンテンツ画面
public class AppContentViewController<Presenter: AppContentPresentation>: UIViewController,
    AppContentViewControllerProtocol
{

    let presenter: Presenter

    public init(presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        addFullScreenChildViewController(
            UIHostingController(rootView: AppContentView(presenter: presenter)))
    }
}

struct AppContentViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        @Dependency(\.createAppContentViewController) var createViewController
        return UINavigationController(rootViewController: createViewController())
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}
