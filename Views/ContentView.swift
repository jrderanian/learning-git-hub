//
//  ContentView.swift
//  quotesm2final
//
//  Created by John Deranian on 9/3/22.
//

import SwiftUI


//this works
/*
struct ContentView: View {
    
    @ObservedObject var model = AuthorModel()

    var body: some View {
        ForEach(model.authors) { r in
           
            HStack{
                Image(r.imageAuthor)
                Text(r.name)
            }
            
            
        }
    }
}
 */

// This works as well....
/*
struct ContentView: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(model.authors){ r in
                    HStack{
                        //Text(r.name)
                        Image(r.imageAuthor)
                        Text(r.name)
                    }
                }
            }
        }
    }
}
*/
// Navigation View is working, though nothing getting passed to detail view...
/*
struct ContentView: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(model.authors){ r in
                        HStack{
                            //Text(r.name)
                            Image(r.imageAuthor)
                            Text(r.name)
                        }
                    }
                }
            }
        }
    }
}
*/

struct ContentView: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    
                    ForEach(model.authors){ r in
                        
                        // build the navigation link and see what happens...
                        NavigationLink(destination: DetailView(thisauthor: r),
                                        label: {
                            VStack{
                                //Text(r.name)
                                Image(r.imageAuthor)
                                Text(r.name)
                            }
                        })
                    }
                }
            }//.navigationBarTitle("Authors")
            //.navigationBarTitle("Famous Quotes")
        }
        
}

}




        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
