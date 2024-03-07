//
//  RecipeJSONResponse.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation


struct RecipeJSONResponse: JSONResponse {
    private enum CodingKeys: String, CodingKey {
        case array = "meals"
    }
    
    let array: [Recipe]
}
