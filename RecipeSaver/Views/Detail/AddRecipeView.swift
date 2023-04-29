//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 14.03.23.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel

    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var ingredients: String = ""
    @State private var url: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                    
                }
                Section(header: Text("url")) {
                    TextEditor(text: $url)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss() 
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: Recipe.all.sorted{ $0.dataPublished > $1.dataPublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                            Button {
                               saveRecipe()
                            } label: {
                                Label("Done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                            
                        }
              }
            })
            .navigationTitle("New Recipe")
            
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
extension AddRecipeView {
    
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", ingredients: ingredients, category: selectedCategory.rawValue, dataPublished: datePublished, url: "")
          
        recipesVM.addRecipe(recipe: recipe)
        
    }
}









