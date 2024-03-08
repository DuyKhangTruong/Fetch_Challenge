//
//  RecipeBriefInfoCard.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct RecipeBriefInfoCard: View {
    let mealName: String
    let tags: String
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Name")
                    .foregroundStyle(.secondary)
                    .font(.system(size: 16, weight: .medium))
                Text(mealName)
                    .font(.system(size: 18, weight: .bold))
                if (tags != "") {
                    Text("Tags")
                        .foregroundColor(.secondary)
                        .font(.system(size: 16, weight: .medium))
                    Text(tags)
                        .font(.system(size: 18, weight: .bold))
                }
            }
            Spacer()
        }
        
        .modifier(GenericCardView())
    }
}
