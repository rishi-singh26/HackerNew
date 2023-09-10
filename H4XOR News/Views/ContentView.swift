//
//  ContentView.swift
//  H4XOR News
//
//  Created by Rishi Singh on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        VStack {
            NavigationView {
                List(networkManager.posts) {(post) in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                        }
                    }

                }
                .navigationTitle("H4XOR News")
                .listStyle(.plain)
            }
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
