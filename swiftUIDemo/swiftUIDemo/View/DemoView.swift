//
//  DemoView.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI

struct DemoView: View {
    @StateObject var fetchModel = FetchModel()
    
    var body: some View {
        ScrollView{
            VStack{
                LazyVStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundStyle(.blue)
                        .overlay(
                            VStack{
                                Text("您好")
                                Text("hello world")
                            }
                                .foregroundStyle(.white)
                                .font(.title)
                            ,
                            alignment: .top
                        )
                        .padding(.top, 150)
                    Button {
                        fetchModel.fetchData()
                    } label: {
                        Text("点击进行请求")
                    }
                    .padding()
                    
                    Text("结果如下:" + fetchModel.data)
                    
                    Label("Lightning", systemImage: "bolt.fill")
//                        .labelStyle(.titleOnly)
                }
                Spacer()
            }
        }
        .navigationTitle("深层次测试页面")
    }
}

#Preview {
    DemoView()
}
