//
//  QuoteCard.swift
//  QuotesApp
//
//  Created by Michael Shustov on 05.07.2021.
//

import SwiftUI

struct QuoteCard: View {
    
    var quote:Quote
    
    var body: some View {
        
        ZStack{

            Image(quote.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)

            VStack(alignment: .leading, spacing: 10.0){

                Text(quote.quotes[Int.random(in: 0...3)])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(8)
                
                Text("- " + quote.name)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    
            }
            .padding([.top, .leading, .trailing], 15.0)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: 1, y: 1)
        }
        .foregroundColor(.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(20)
        .padding([.leading, .trailing])
    }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        
        QuoteCard(quote: Quote.createExample())
    }
}
