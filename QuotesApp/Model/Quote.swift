//
//  Quote.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import Foundation

struct Quote: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
    static func createExample() -> Quote {
        
        let testQuote = Quote(id: UUID(), name: "Some Great Person", quotes: ["Whell is round", "Sun is warm", "Don't eat yellow snow", "It's so dark, when eyes are closed"], image: "einstein")
        
        return testQuote
    }
}
