//
//  TestModel1.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import Foundation
import SwiftUI

struct TestModel1<Destination: View>: Identifiable {
    let id = UUID()
    var lableStr: String
    var destination: Destination
}
