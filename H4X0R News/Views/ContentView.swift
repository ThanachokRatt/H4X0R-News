//
//  ContentView.swift
//  H4X0R News
//
//  Created by Schweppe on 16/3/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post  in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                }
                
                
            }
            .navigationBarTitle("Hacker NEWS")
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



/*let posts = [Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Bonjour"),
 Post(id: "3", title: "Hol")]
 */
