//
//  SuperDateUtil.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import Foundation

class SuperDateUtil {
    static func currentYear() -> Int {
        // 当前日期
        let date = Date()
        
        let calendar = Calendar.current
        
        let d = calendar.dateComponents([Calendar.Component.year, Calendar.Component.month], from: date)
        
        return d.year!
    }
}
