//
//  DataService.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import Foundation


class DataService {
    
    static func GetLocalData() -> [Quote] {
        
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard path != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let quotesData = try decoder.decode([Quote].self, from: data)
                
                for q in quotesData {
                    q.id = UUID()
                }
                
                return quotesData
            }
            catch{
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Quote]()
    }
}
