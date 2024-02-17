// Created by okazakishinya on 2024/02/17.

import UIKit
import SwiftUI

/// アプリのコンテンツ画面
public class AppContentViewController<Presenter: AppContentPresentation>: UIViewController, ViewControllerProtocol {
    
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
        
        addFullScreenChildViewController(UIHostingController(rootView: AppContentView(presenter: presenter)))
    }
}

struct AppContentViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let router = AppContentRouter()
        let presenter = AppContentPresenter(router: router)
        let vc = AppContentViewController(presenter: presenter)
        router.viewController = vc
        return UINavigationController(rootViewController: vc)
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}
