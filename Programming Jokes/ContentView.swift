//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Quinn Kozak on 2/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
        
    }
    func getJokes() {

            let apiKey = "?rapidapi-key=(bca500ad56msh8d07a7442d9a154p102661jsnc2db0f71dbed)"

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Joke: Identifiable {
let id = UUID()
    var setup = ""
    var punchline = ""
}
