//
//  ReducerProtocolSampleApp.swift
//  ReducerProtocolSample
//
//  Created by haigo koji on 2023/07/01.
//

import SwiftUI
import ComposableArchitecture

@main
struct ReducerProtocolSampleApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: ReducerProtocolSampleApp.store)
        }
    }
}
