//
//  RecipeIngredientsCard.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct RecipeIngredientsCard: View {
    let ingredients: [Ingredient]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Ingredients")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            ForEach(ingredients, id: \.id) { ingredient in
                IngredientView(ingredient: ingredient.name, measurement: ingredient.measure)
            }
        }
        .modifier(GenericCardView())
    }
}
