//
//  RecipeInstructionsCard.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct RecipeInstructionsCard: View {
    let instructions: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Instruction")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            Text(instructions)
                .font(.system(size: 18, weight: .medium))
        }
        .modifier(GenericCardView())
    }
}
