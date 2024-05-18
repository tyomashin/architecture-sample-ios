// Created by okazakishinya on 2024/05/18.

import SwiftUI

struct LoginView<Presenter: LoginPresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        VStack {
            Text("ログイン画面")
            Text("index: \(presenter.index)")

            Button(
                action: {
                    presenter.tapLoginButton()
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

            Spacer()

            Button(
                action: {
                    presenter.tapQAModalButton()
                },
                label: {
                    HStack {
                        Text("モーダル表示")
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.blue)
                })
        }
    }
}
