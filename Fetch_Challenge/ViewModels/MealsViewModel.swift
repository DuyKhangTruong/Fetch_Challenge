//
//  MealsViewModel.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation
import SwiftUI


@MainActor
class MealsViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var recipe: Recipe? = nil
    
    @Published var isLoadingMeal = false
    @Published var isLoadingRecipe = false
    
    func fetchMeals(for category: String) async {
        isLoadingMeal.toggle()
        do {
            meals = try await Services.fetchMeals(for: category)
            
        } catch {
            print(error.localizedDescription)
        }
        
        isLoadingMeal.toggle()
    }
    
    func fetchRecipe(for meal: Meal) async {
        isLoadingRecipe.toggle()
        do {
            recipe = try await Services.fetchRecipe(for: meal)
        } catch {
            print(error.localizedDescription)
        }
        isLoadingRecipe.toggle()
    }
}
