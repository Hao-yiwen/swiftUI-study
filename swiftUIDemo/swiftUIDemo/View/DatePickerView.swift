//
//  DatePickerView.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/2.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    @State private var date1 = Date()
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }


    @State private var selectedFlavor: Flavor = .chocolate
    
    @State private var bgColor =
            Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    @State private var progress = 0.5
    
    
    var body: some View {
        ScrollView {
            DatePicker("start date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                .padding(30)
            
            DatePicker(
                    "Start Date",
                    selection: $date1,
                    displayedComponents: [.date]
                )
            .datePickerStyle(.graphical)
            
            Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
            
            ColorPicker("Alignment Guides", selection: $bgColor)
            
            ProgressView(value: progress)
                        Button("More") { progress += 0.05 }
            Spacer()
        }
        
    }
}

#Preview {
    DatePickerView()
}
