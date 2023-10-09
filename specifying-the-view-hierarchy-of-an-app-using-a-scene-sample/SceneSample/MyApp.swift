/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        #if os(iOS)
        MyAlternativeScene()
        #elseif os(macOS)
        MyScene()
        #endif
    }
}
