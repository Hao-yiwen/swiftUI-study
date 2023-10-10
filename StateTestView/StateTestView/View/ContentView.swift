//
//  ContentView.swift
//  StateTestView
//
//  Created by yw.hao on 2023/10/10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var settings = UserSettings()

    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    settings.score += 1
                }) {
                    Text("Increase Score")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Show Detail View")
                }
                Text("Score: \(settings.score)")
            }
        }
        .environmentObject(settings)  // 提供环境对象给下级视图
    }
}
#Preview {
    ContentView()
}
