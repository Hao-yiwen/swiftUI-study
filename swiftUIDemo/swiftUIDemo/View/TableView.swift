//
//  TableView.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI

struct TableView: View {
    @State private var people = [
        Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
        Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
        Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
        Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
    ]
    
    @State private var selectedPeople = Set<Person.ID>()
    
    var body: some View {
//        Table(people, selection: $selectedPeople) {
//            TableColumn("given Name", value: \.givenName)
//            TableColumn("family Name", value: \.familyName)
//            TableColumn("email Address", value: \.emailAddress)
//        }
        Group {
            Text("SwiftUI")
            Text("Combine")
            Text("Swift System")
        }
        .font(.headline)
        .background(.blue)
        
        Link(destination: URL(string: "https://www.apple.com")!, label: {
            Text("Link")
        })
        
        ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
            Label("Share", image: "MyCustomShareIcon")
        }
    }
}

#Preview {
    TableView()
}
