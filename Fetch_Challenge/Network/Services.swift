//
//  Service.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation

struct Services {
    static func fetchMeals(for category: String) async throws -> [Meal] {
        guard let url = URLs.getURLMeals(for: category) else {  throw URLError(.badURL) }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(MealJSONResponse.self, from: data)
    
        return response.array
    }
    
    static func fetchRecipe(for meal: Meal) async throws -> Recipe? {
        guard let url = URLs.getUrlRecipe(for: meal.mealID) else {  throw URLError(.badURL) }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(RecipeJSONResponse.self, from: data)
    
        return response.array.first
    }
}
