//
//  ContentView.swift
//  SwiftUI-LazyVGrid-App
//
//  Created by 近藤米功 on 2022/12/07.
//

import SwiftUI

struct ContentView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible(),spacing: 10,alignment: .center), count: 3)
    var itemArray = [Item(name: "りんご"),Item(name: "ばなな"),Item(name: "オレンジ"),Item(name: "ブドウ")]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(itemArray) {
                    item in
                    Text(item.name)
                        .background(Color.random)
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
    }
}

extension Color {
    static var random: Color {
        return Color (
        red: .random(in: 0...1),green: .random(in: 0...1), blue: .random(in: 0...1)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
