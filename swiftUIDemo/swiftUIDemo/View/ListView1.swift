//
//  ListView1.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI

struct ListView1: View {
    @State private var listDemo = TestModel1List().list
    var body: some View {
        List(listDemo) {item in
            NavigationLink {
                item.destination
            } label: {
                Text(item.lableStr)
            }
        }
        .navigationTitle("中间页面")
    }
}

#Preview {
    NavigationStack{
        ListView1()
    }
}
