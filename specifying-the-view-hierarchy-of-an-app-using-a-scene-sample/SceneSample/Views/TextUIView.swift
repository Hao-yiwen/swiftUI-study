//
//  TextUIView.swift
//  SceneSample
//
//  Created by yw.hao on 2023/10/9.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct TextUIView: View {
    var body: some View {
        ScrollView {
            Text("Hamlet")
                .font(.largeTitle)
            Text("by William Shakespeare")
                .font(.caption)
                .italic()
            HStack {
                Image(systemName: "folder.badge.plus")
                Image(systemName: "heart.circle.fill")
                Image(systemName: "alarm")
            }
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)
            Label("Favorite Books", systemImage: "books.vertical")
                .labelStyle(TitleAndIconLabelStyle.titleAndIcon)
                .font(Font.largeTitle)
            Image("yellow_Daisy")
                .resizable()
                .scaledToFit()
    //        AsyncImage(url: URL(string: "https://docs-assets.developer.apple.com/published/1baa937d652aecdb5a243f0803fe029a/layout-content-images@2x.jpeg"))
    //            .scaledToFit()
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Circle()
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
            }
            .aspectRatio(3.0, contentMode: .fit)
        }
    }
}

#Preview {
    TextUIView()
}
