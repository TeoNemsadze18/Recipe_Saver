//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by teona nemsadze on 13.03.23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfaset = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    //let description: String
    let ingredients: String
   // let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let url: String
}

extension Recipe {
    static let all : [Recipe] = [
        Recipe(
            name: "Sweet potato & lentil soup",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-424727_12-793eaac.jpg?quality=90&webp=true&resize=440,400",
            ingredients:  "2 tsp medium curry powder, 3 tbsp olive oil, 2 onions, grated, 1 eating apple, peeled, cored and grated, 3 garlic cloves, crushed, 20g pack coriander, stalks chopped, thumb-size piece fresh root ginger, grated, 800g sweet potatoes, 1.2l low-sodium vegetable stock, 100g red lentils, 300ml milk, juice 1 lime",
             category: "Appetaizer",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/sweet-potato-lentil-soup"
        ),
        Recipe(
            name: "10-minute couscous salad",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-fudge-cake-91de17a.jpg?quality=90&webp=true&resize=220,200",
            ingredients:  "150ml sunflower oil, plus extra for the tin,  175g self-raising flour, 2 tbsp cocoa powder, 1 tsp bicarbonate of soda, 150g caster sugar, 2 tbsp golden syrup, 2 large eggs, lightly beaten, 150ml semi-skimmed milk",
             category: "Dessert",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/naughty-chocolate-fudge-cake"
        ),
        Recipe(
            name: "chocolate fudge cake",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/couscous-9ab75f0.jpg?quality=90&webp=true&resize=500,454",
            ingredients:  "100g couscous 200ml hot low salt vegetable stock (from a cube is fine), 2 spring onions, 1 red pepper, ½ cucumber, 50g feta cheese, cubed, 2tbsp pesto, 2tbsp pine nuts",
             category: "Salad",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/10minute-couscous-salad"
        ),
        Recipe(
            name: "chocolate fudge cake",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/04/mocktail-3b9ab7d.jpg?quality=90&webp=true&resize=600,545",
            ingredients:  "150ml sunflower oil, plus extra for the tin,  175g self-raising flour, 2 tbsp cocoa powder, 1 tsp bicarbonate of soda, 150g caster sugar, 2 tbsp golden syrup, 2 large eggs, lightly beaten, 150ml semi-skimmed milk",
             category: "Drink",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/summer-cup-mocktail"
        ),
        Recipe(
            name: "Chorizo & mozzarella gnocchi bake",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=440,400",
            ingredients:  "1 tbsp olive oil, 1 onion, finely chopped, 2 garlic cloves, crushed, 120g chorizo, diced, 2 x 400g cans chopped tomatoes, 1 tsp caster sugar, 600g fresh gnocchi, 125g mozzarella ball, cut into chunks, small bunch of basil, torn, green salad, to serve",
             category: "Appetaizer",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/chorizo-mozzarella-gnocchi-bake"
        ),
        Recipe(
            name: "Spaghetti puttanesca",
            image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/puttanesca-cfb4e42.jpg?quality=90&webp=true&resize=440,400",
            ingredients:  "3 tbsp olive oil, 1 onion, finely chopped, 2 large garlic cloves, crushed, ½ tsp chilli flakes (optional), 400g can chopped tomatoes, 5 anchovy fillets, finely chopped, 120g pitted black olives, 2 tbsp capers, drained, 300g dried spaghetti, ½ small bunch of parsley, finely chopped",
             category: "Appetaizer",
            dataPublished: "2023",
            url: "https://www.bbcgoodfood.com/recipes/spaghetti-puttanesca"
        ),
    ]
}
