//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 13.03.23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
        Text("You havenot save any recipes yet!")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
