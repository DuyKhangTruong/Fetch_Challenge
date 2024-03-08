//
//  IngredientView.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI
import Kingfisher

struct IngredientView: View {
    let ingredient: String
    let measurement: String
    
    var body: some View {
        HStack(spacing: 15) {
            KFImage(URLs.getImgURL(for: ingredient))
                .resizable()
                .frame(width: 25, height: 25)
            Text(self.ingredient)
                .bold()
            Spacer()
            Text(self.measurement)
                .foregroundColor(.secondary)
                .bold()
        }
    }
}

#Preview {
    IngredientView(ingredient: "Onion", measurement: "2 cups")
}
