// Created by okazakishinya on 2024/05/18.

import SwiftUI

struct HomeView<Presenter: HomePresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        VStack {
            Text("TODO: 実装")
        }
    }
}
