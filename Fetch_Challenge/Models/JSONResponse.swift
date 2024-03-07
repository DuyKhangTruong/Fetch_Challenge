//
//  JSONResponse.swift
//  Fetch_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/7/24.
//

import Foundation

protocol JSONResponse: Decodable {
    associatedtype Response
    
    var array: Response { get }
}
