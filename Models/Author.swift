//
//  Quotes.swift
//  quotesm2final
//
//  Created by John Deranian on 8/30/22.
//

import Foundation

class Author: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var imageAuthor:String
    var moreInfoUrl:String
    var quotes:[String]
    
//    static func testData() -> Author {
//
//        let testQuote = Author(id: UUID(), name: "Capone")
////        let testQuote = Author(id: UUID(), name: "Capone", imageAuthor: "capone", moreInforUrl: "http://drano.net", quotes: ["Stick em UP", "quote 2"])
//
//        return testQuote
//
//    }
    
    
}
