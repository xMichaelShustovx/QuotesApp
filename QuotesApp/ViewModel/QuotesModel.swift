//
//  QuotesModel.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import Foundation

class QuotesModel {
    
    var quotes:[Quote]
    
    init() {
        
        quotes = DataService.GetLocalData()
    }
}
