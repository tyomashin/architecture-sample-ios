// Created by okazakishinya on 2024/05/18.

import SwiftUI

struct LoginView<Presenter: LoginPresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        VStack {
            Text("ログイン画面")

            Button(
                action: {

                },
                label: {
                    HStack {
                        Text("ログイン")
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.blue)
                })
        }
    }
}
