//
//  Quote.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
}
