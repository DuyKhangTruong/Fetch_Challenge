//
//  Urls.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation


struct URLs {
    static func getURLMeals(for category: String) -> URL? {
        let enpoint = "filter.php?c=\(category)"
        let url = URL(string: Constants.JSONURLString + "/\(enpoint)")
        
        return url
    }
    
    static func getUrlRecipe(for id: String) -> URL? {
        let enpoint = "lookup.php?i=\(id)"
        let url = URL(string: Constants.JSONURLString + "/\(enpoint)")
        
        return url
    }
    
    static func getImgURL(for ingredient: String) -> URL? {
        guard let percentEncodedIngredient = ingredient.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else {
            return nil
        }
        
        let url = URL(string: Constants.baseURLString + "/images/ingredients/\(percentEncodedIngredient).png")
        
        return url
    }
}
