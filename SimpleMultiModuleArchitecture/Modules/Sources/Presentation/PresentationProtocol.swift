// Created by okazakishinya on 2024/02/04.

import SwiftUI

/// Presenter が準拠するプロトコル
///
/// @dynamicMemberLookup によって、ViewState に対するアクセス（presenter.viewState.property）が、あたかも Presenter 自身のプロパティに対するアクセス（presenter.property）として記述できる
@MainActor @dynamicMemberLookup
public protocol PresentationProtocol: ObservableObject {
    associatedtype ViewState
    
    var viewState: ViewState { get }
    
    subscript<Value>(dynamicMember keyPath: KeyPath<ViewState, Value>) -> Value { get }
}

public extension PresentationProtocol {
    subscript<Value>(dynamicMember keyPath: KeyPath<ViewState, Value>) -> Value {
        get {
            self.viewState[keyPath: keyPath]
        }
    }
}
