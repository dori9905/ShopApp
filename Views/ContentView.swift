import SwiftUI

struct ContentView: View {
    let items = [
        //Displays a list of all the items with correcponding descriptions such as name, descriptions, price, and imageName
        Item(name: "PlayStation 5", description: "A game console", price: 200.99, imageName: "playstation"),
        Item(name: "Hammer", description: "A very useful tool, is good for hammering things.", price: 1.99, imageName: "hammer"),
        Item(name: "MacBook Pro", description: "An overpriced laptop, pretty neat for coding though.", price: 2001.99, imageName: "macbookpro"),
        Item(name: "iPad", description: "Pretty nice tablet, can be used as a second screen", price: 999.99, imageName: "ipad"),
        Item(name: "iPhone", description: "Small iPad, can be used for calling people.", price: 632.66, imageName: "iphone"),
        Item(name: "Screwdriver", description: "We don't screw around with this one.", price: 5.99, imageName: "screwdriver"),
        Item(name: "Shoes", description: "Used for wearing.", price: 10.99, imageName: "shoes"),
        Item(name: "XBox Series X", description: "Another game console", price: 2000.99, imageName: "xbox")
    ]
    
    // This code iterates through each item in the 'items' array, creating a NavigationLink for each one
    // that takes the user to a detailed view. It displays each item's details alongside its price in a row and the image below.
    // The title of the navigation bar is set to "Start Shopping!".
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(destination: ItemDetailedView(item: item)) {
                        HStack {
                            ItemCell(item: item)
                            Spacer()
                            Text("$\(String(format: "%.2f", item.price))")
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Start Shopping!", displayMode: .large)
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

