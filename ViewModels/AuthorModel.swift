//
//  QuotesModel.swift
//  quotesm2final
//
//  Created by John Deranian on 8/30/22.
//

import Foundation

class AuthorModel: ObservableObject{
    
    
    //var famousQuotes = [QuotesByFamousPeople]()
    @Published var authors = [Author]()
    
    init() {
        self.authors = getLocalJason()
    }
    
    func getLocalJason() -> [Author] {
        
        // Parse local json file
        // Get a url path to the jason file
        // Create a url object
        // Create a data object
        // Decode the data file with a JSON decoder
        // Add the unique IDs
        // Return the Author instances
        
        let pathstring = Bundle.main.path(forResource: "authordata", ofType: "json")
        
        if let path = pathstring {
            let url = URL(fileURLWithPath: path)
            // could use a guard statement here....
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                let authors = try decoder.decode([Author].self, from:data)
                    // need to add id to each recipe
                /*
                for r in authors {
                        // set unique id
                        r.id = UUID()
                        print(r.author)
                        //EXCEPT this won't work on a structure...
                        // so we can change QuotesByFamoousPeople struct to class
                }
                 */
                for index in 0..<authors.count{
                    authors[index].id = UUID()
                }
                    //self.famousQuotes = quotesFromJson // assigns
                return authors
            }
            catch {
                print(error)
            }
        }
        return [Author]()
    }
}
