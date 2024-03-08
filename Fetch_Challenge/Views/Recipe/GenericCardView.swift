//
//  GenericCardView.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import SwiftUI

struct GenericCardView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(15)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color(.systemBackground))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.1), radius: 20)
    }
}
