// Created by okazakishinya on 2024/02/04.

import SwiftUI

/// アプリのルート画面
struct RootView<Presenter: RootPresentation>: View {
    
    @ObservedObject var presenter: Presenter
    
    var body: some View {
        ZStack {
            AppContentViewControllerRepresentable()
        }
    }
}
