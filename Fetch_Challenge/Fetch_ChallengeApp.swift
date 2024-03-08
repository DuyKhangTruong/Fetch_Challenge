//
//  Fetch_ChallengeApp.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

@main
struct Fetch_ChallengeApp: App {
    @StateObject var mealsVM = MealsViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(mealsVM)
        }
    }
}
