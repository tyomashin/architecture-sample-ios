// Created by okazakishinya on 2024/05/18.

import SwiftUI

struct SplashView<Presenter: SplashPresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        VStack {
            Text("Splash")
        }
    }
}
