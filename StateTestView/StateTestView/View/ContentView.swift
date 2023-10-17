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
            WebView(urlString: "https://www.baidu.com")
                .navigationBarTitle("OpenAI", displayMode: .inline)
        }
    }
}
#Preview {
    ContentView()
}
