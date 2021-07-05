//
//  QuoteDetailsView.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import SwiftUI

struct QuoteDetailsView: View {
    
    let quote:Quote
    
    var body: some View {

            ScrollView{
                
                VStack(alignment: .leading) {
                    Text(quote.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    
                    ForEach(quote.quotes, id: \.self) {q in
                        
                        Text(q)
                            .padding(.bottom)
                    }
                }
                .padding([.leading, .bottom, .trailing])
            }
    }
}

struct QuoteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesModel()
        
        QuoteDetailsView(quote: model.quotes[0])
    }
}
