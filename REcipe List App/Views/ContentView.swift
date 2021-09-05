//
//  ContentView.swift
//  REcipe List App
//
//  Created by user202247 on 9/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    
    var body: some View {
        
        
        NavigationView{
            
            List(model.recipes) {r in
                
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        //MARK: Row Item
                        HStack(spacing: 20.0) {
                            
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5.0)
                            Text(r.name)
                            
                        }                })
                
                
            }.navigationBarTitle("All Recipes")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
