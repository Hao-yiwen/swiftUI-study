//
//  DetailView.swift
//  StateTestView
//
//  Created by yw.hao on 2023/10/10.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button(action: {
                settings.score += 1
            }) {
                Text("Increase Score")
            }
        }
    }
}
