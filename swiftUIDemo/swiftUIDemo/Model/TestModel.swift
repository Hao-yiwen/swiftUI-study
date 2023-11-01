//
//  TestModel.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/10/31.
//

import SwiftUI
import Foundation

class TestModel: ObservableObject {
    @Published var content: String = "" {
        didSet {
           save()
        }
    }
    
    var id = UUID()
    
    var str: String {
        get {
            return "3123213"
        }
    }
    
    init() {
        load()
    }
    
    func save() {
        UserDefaults.standard.set(content, forKey: "content")
    }
    
    func load() {
        if let content = UserDefaults.standard.string(forKey: "content") {
            self.content = content
        }
    }
}
