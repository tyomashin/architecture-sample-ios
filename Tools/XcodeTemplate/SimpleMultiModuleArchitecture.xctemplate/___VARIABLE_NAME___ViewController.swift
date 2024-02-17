//___FILEHEADER___

import UIKit
import SwiftUI

public class ___VARIABLE_NAME___ViewController<Presenter: ___VARIABLE_NAME___Presentation>: UIViewController, ViewControllerProtocol {
    
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
        
        addFullScreenChildViewController(UIHostingController(rootView: ___VARIABLE_NAME___View(presenter: presenter)))        
    }
}
