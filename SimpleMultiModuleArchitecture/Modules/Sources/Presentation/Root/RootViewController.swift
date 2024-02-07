// Created by okazakishinya on 2024/02/04.

import UIKit
import SwiftUI

/// アプリのルート画面
public class RootViewController<Presenter: RootPresentation>: UIViewController, ViewControllerProtocol {
    
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
        
        addFullScreenChildViewController(UIHostingController(rootView: RootView(presenter: presenter)))
    }
}
