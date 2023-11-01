//
//  ListView.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("您好")
            Text("您好")
            Text("您好")
            NavigationLink(destination: ContentView(idString: "123123")) {
                Text("输入测试页面")
            }
            NavigationLink {
                ListView1()
            } label: {
                Text("列表测试页面2")
            }
            NavigationLink {
                UIKitViewController()
                    .edgesIgnoringSafeArea(.all)
            } label: {
                Text("Uikit测试页面")
            }
            NavigationLink {
                TableView()
            } label: {
                Text("table页面")
            }



        }
        .navigationTitle("列表")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(TestModel())
}
