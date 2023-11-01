//
//  ScrollViewReader.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/2.
//

import SwiftUI

struct ScrollViewReader: View {
    let rows = [GridItem(.fixed(30)), GridItem(.fixed(30)),GridItem(.fixed(30)), GridItem(.fixed(30))]
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var vibrateOnRing = false
    
    var body: some View {
        ScrollView() {
//            LazyHGrid(rows: rows) {
//                ForEach(0x1f600...0x1f679, id: \.self) { value in
//                    Text(String(format: "%x", value))
//                    Text(emoji(value))
//                        .font(.largeTitle)
//                }
//            }
            
            
            Grid {
                GridRow {
                    Text("Hello")
                    Image(systemName: "globe")
                }
                Divider()
                GridRow {
                    Image(systemName: "hand.wave")
                    Text("World")
                }
            }
            
            Grid {
                GridRow {
                    Color.clear
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    ForEach(1..<4) { column in
                        Text("C\(column)")
                    }
                }
                ForEach(1..<4) { row in
                    GridRow {
                        Text("R\(row)")
                        ForEach(1..<4) { _ in
                            Circle().foregroundStyle(.mint)
                        }
                    }
                }
            }
            
            VStack {
               Slider(
                   value: $speed,
                   in: 0...100,
                   onEditingChanged: { editing in
                       isEditing = editing
                   }
               )
               Text("\(speed)")
                   .foregroundColor(isEditing ? .red : .blue)
           }
            
            Toggle(isOn: $vibrateOnRing) {
                    Text("Vibrate on Ring")
                }

            
        }
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    ScrollViewReader()
}
