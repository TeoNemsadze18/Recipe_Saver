//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 13.03.23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
