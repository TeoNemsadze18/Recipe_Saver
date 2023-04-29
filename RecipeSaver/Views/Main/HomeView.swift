//
//  HomeView.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 13.03.23.
//

import SwiftUI

struct HomeView: View {
   @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
            .foregroundColor(.black)

        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel()) 
    }
}
