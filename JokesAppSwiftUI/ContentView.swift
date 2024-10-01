//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Beyza Nur Tekerek on 1.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
       
        NavigationView {
            
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            .navigationTitle("Jokes App")
            
        }
        
    }
    
    func addJoke() {
        jokesVM.getJokes(count: 1)
    }
}

#Preview {
    ContentView()
}
