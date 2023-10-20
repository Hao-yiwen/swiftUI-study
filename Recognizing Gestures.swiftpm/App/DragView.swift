/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct DragView: View {
    private let circleSize: CGFloat = 100
    @State private var x: CGFloat = 0
    @State private var y: CGFloat = 0
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                x = value.startLocation.x + value.translation.width - circleSize/2
                y = value.startLocation.y + value.translation.height - circleSize/2
            }
    }

    var body: some View {
        VStack {
            Text("Use one finger to drag the circle around")
            Spacer()
            Circle()
                .foregroundColor(.teal)
                .frame(width: circleSize, height: circleSize)
                .offset(x: x, y: y)
                .gesture(dragGesture)
            Spacer()
        }
        .navigationTitle("Drag")
        .padding()
        .toolbar {
            Button("Reset") {
                x = 0
                y = 0
            }
        }
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
