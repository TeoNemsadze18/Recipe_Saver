//
//  TabBar.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 13.03.23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            AddRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}







