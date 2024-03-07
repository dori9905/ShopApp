import SwiftUI

struct ItemCell: View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .font(.headline)
            Text(item.description)
                .foregroundColor(.secondary)
        }
    }
}
