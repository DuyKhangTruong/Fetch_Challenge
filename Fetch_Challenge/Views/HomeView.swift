//
//  HomeView.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var mealsVM = MealsViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                listView
                
                if mealsVM.isLoadingMeal {
                    ProgressView("Loading Meals")
                }
            }
            .navigationBarTitle(Constants.requiredCatelog)
        }
        .task {
            await mealsVM.fetchMeals(for: Constants.requiredCatelog)
        }
    }
    
    var listView: some View {
        List(mealsVM.meals, id: \.id) { meal in
            NavigationLink(destination: RecipeView()) {
                ThumbnailRow(imgURL: meal.imgURLString, title: meal.mealName)
            }
        }
        .listStyle(.plain)
        .refreshable {
            await mealsVM.fetchMeals(for: Constants.requiredCatelog)
        }
    }
}

#Preview {
    HomeView()
}
