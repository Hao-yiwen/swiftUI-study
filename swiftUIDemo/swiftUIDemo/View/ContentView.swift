//
//  ContentView.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var testModel: TestModel
    @State var idString: String
    @FocusState var isFouced: Bool
    
    var body: some View {
        ScrollView {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(.top, 160)
            Text(testModel.content)
            TextField(
                "User name (email address)",
                text: $testModel.content
            )
            .foregroundStyle(.white)
            .disableAutocorrection(true)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 200)
            .border(.blue)
            .background(.foreground)
            .foregroundStyle(Color.red)
            
            Text(testModel.id.uuidString)
            
            Text(testModel.str)
                .background(.blue)
                .padding()
            
            TextField(
                "User name (email address)",
                text: $idString
            )
            .font(.title2)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            .focused($isFouced)
            .onChange(of: idString, { oldValue, newValue in
                print(newValue)
            })
        }
        .navigationTitle("输入测试页面")
//        .onAppear {
//            DispatchQueue.global(qos: .default).async {
//                isFouced = true
//            }
////            isFouced = true
//        }
        .padding()
    }
}

#Preview {
    ContentView(idString: "123")
        .environmentObject(TestModel())
}
