//
//  swiftUIDemoApp.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/10/24.
//

import SwiftUI

@main
struct swiftUIDemoApp: App {
    @State var testModel = TestModel();
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
        .environmentObject(testModel)
    }
}
