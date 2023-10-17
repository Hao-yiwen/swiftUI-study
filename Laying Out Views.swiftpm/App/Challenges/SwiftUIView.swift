//
//  SwiftUIView.swift
//  
//
//  Created by yw.hao on 2023/10/18.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(.green)
            
            Circle()
                .fill(.blue)
        }
    }
}

#Preview {
    SwiftUIView()
}
