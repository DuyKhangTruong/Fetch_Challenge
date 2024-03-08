//
//  MealImageCardView.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI
import Kingfisher


struct MealImageCardView: View {
    let meal: Meal
    
    var body: some View {
        KFImage(URL(string: self.meal.imgURLString))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.1), radius: 20)
    }
}
