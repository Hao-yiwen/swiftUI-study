//
//  Person.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    
    let givenName: String
    let familyName: String
    let emailAddress: String
    
    var fullName: String{
        get {
            return givenName + " " + familyName
        }
    }
}
