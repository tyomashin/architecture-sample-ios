// Created by okazakishinya on 2024/05/18.

import SwiftUI

struct QAModalView<Presenter: QAModalPresentation>: View {

    @ObservedObject var presenter: Presenter

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10, id: \.self) { index in
                    Button(
                        action: {
                            presenter.tapItem(index)
                        },
                        label: {
                            Text("\(index)")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                        }
                    )
                    .background(.blue)
                }
            }
        }
    }
}
