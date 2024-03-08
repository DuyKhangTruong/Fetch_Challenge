//
//  Ingredient.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation


struct Ingredient: Decodable {
    var id = UUID()
    let name: String
    let measure: String
}
