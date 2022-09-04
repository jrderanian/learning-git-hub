//
//  DetailView.swift
//  quotesm2final
//
//  Created by John Deranian on 9/3/22.
//

import SwiftUI

struct DetailView: View {
    
    
    var thisauthor:Author
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Text(thisauthor.name)
                        .font(.headline)
                    Image(thisauthor.imageAuthor)
                }
                VStack(alignment: .leading, spacing: 5){
                    // 2666 is diamond 2014 is a dash
                        ForEach(thisauthor.quotes, id: \.self) {quote in
                            Text("\u{2014} \(quote)").multilineTextAlignment(.leading).padding(.vertical)
                        }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        //DetailView()
        
        let model = AuthorModel()
        DetailView(thisauthor: model.authors[0])
    }
}

//struct PizzaView_Previews: PreviewProvider {
//    static var previews: some View {
//        let model = PizzaModel()
//        PizzaView(thisPizza: model.pizzastyles[0])
//
//    }
//}
