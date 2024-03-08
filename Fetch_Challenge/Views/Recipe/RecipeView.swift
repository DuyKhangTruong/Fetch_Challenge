//
//  RecipeView.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var mealsVM: MealsViewModel
    let meal: Meal
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MealImageCardView(meal: meal)
                if let recipe = mealsVM.recipe {
                    RecipeBriefInfoCard(mealName: recipe.mealName, tags: recipe.tags)
                    RecipeIngredientsCard(ingredients: recipe.ingredients)
                    RecipeInstructionsCard(instructions: recipe.instructions)
                }
                else {
                    Text("No further information found")
                        .fontWeight(.semibold)
                        .modifier(GenericCardView())
                }
            }
            .padding(10)
         }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .task {
            await mealsVM.fetchRecipe(for: meal)
        }
    }
}
