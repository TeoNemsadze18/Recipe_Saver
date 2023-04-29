//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 14.03.23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { Image in
                Image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack (alignment: .leading, spacing: 30) {
                    if !recipe.name .isEmpty {
                    Text(recipe.name)
                    }
                    
                    if !recipe.ingredients .isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipe.ingredients)
                    }
                }
                    if !recipe.url .isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Url")
                            .font(.headline)
                        Text(recipe.url)
                    }
                   }
                }
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
                    .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
