//
//  Item.swift
//  ShopApp
//
//  Created by Dori Kosta on 3/6/24.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let imageName: String 
    
    init(name: String, description: String, price: Double, imageName: String) {
        self.name = name
        self.description = description
        self.price = price
        self.imageName = imageName
    }
}


