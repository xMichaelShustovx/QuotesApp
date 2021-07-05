//
//  QuotesListView.swift
//  QuotesApp
//
//  Created by Michael Shustov on 04.07.2021.
//

import SwiftUI

struct QuotesListView: View {
    
    var model = QuotesModel()
    
    var body: some View {

        NavigationView{

            ScrollView{

                VStack(alignment: .leading, spacing: 20.0){
                    
                    ForEach(model.quotes) {q in
                        
                        NavigationLink(
                            destination: QuoteDetailsView(quote: q),
                            label: {
                                
                                QuoteCard(quote: q)
                                
                            })
                    }
                }
            }
            .navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesListView()
    }
}
