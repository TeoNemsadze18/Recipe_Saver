//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 14.03.23.
//

import Foundation

class RecipesViewModel: ObservableObject {
   @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
