// Created by okazakishinya on 2024/02/17.

import SwiftUI

/// アプリのコンテンツ画面
struct AppContentView<Presenter: AppContentPresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        VStack {
            Text("TODO: 実装")
        }
    }
}
