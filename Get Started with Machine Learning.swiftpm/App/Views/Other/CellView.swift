/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct CellView: View {
    var name: String
    var count: Int

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(name)
                    .fontWeight(.bold)
                Text("\(count) images")
            }
            .foregroundColor(.black)

            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(.accent)
                .fontWeight(.bold)
        }
    }
}
