//
//  ItemDetailedView.swift
//  ShopApp
//
//  Created by Dori Kosta on 3/6/24.
//

import Foundation
import SwiftUI

struct ItemDetailedView: View {
    let item: Item
    
    var body: some View {
        VStack {
            Text("Item Details")
                .font(.title)
            Text("Name: \(item.name)")
            Text("Description: \(item.description)")
            Text("Price: $\(item.price)")
            Image(item.imageName) // Display item photo
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }
        .padding()
    }
}

