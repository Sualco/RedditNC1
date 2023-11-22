//
//  ContentView.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
           Spacer()
            SubRedditHeader()
            TabBar()
        }
        
    }
            
}

#Preview {
    ContentView()
}
