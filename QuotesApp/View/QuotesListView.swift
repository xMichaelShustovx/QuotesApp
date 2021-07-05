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

                ForEach(model.quotes) {q in
                    
                    NavigationLink(
                        destination: QuoteDetailsView(quote: q),
                        label: {
                            
                            ZStack{

                                Image(q.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipped()
                                    .cornerRadius(20)


                                VStack(alignment: .leading){

                                    Text(q.quotes[Int.random(in: 0...3)])
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.bottom, 3.0)
                                    
                                    Text("- " + q.name)
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        
                                }
                            }
                            .padding(.all)
                            .shadow(color: .black, radius: 2, x: 1, y: 1)
                        })


                }
            }
            .navigationBarTitle("Quotes")
            
            
//            ScrollView{
//
//                ForEach(model.quotes) {q in
//
//                    ZStack{
//
//                        Image(q.image)
//                            .resizable()
//                            .aspectRatio(contentMode:.fill)
//                            .layoutPriority(-1)
//
//                        VStack(alignment: .leading){
//
//                            Text(q.quotes[Int.random(in: 0...3)])
//                                .font(.largeTitle)
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//
//
//                            Text("- " + q.name)
//                                .foregroundColor(.white)
//                        }
//                        .frame(minWidth: 0, maxWidth: .infinity)
//                        .frame(minHeight: 0, maxHeight: .infinity)
//                    }
//                    .padding(.all)
//                    .clipped()
//                    .aspectRatio(1, contentMode: .fit)
//
//
//                }
//            }
//            .navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesListView()
    }
}
