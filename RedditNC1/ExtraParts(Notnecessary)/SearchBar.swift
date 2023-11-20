//
//  SearchBar.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            TextField ("", text: $searchText)
                .padding(150.0)
                
                
        }
        .searchable(text: $searchText, prompt: "Search in r/Swift")
        
    }

}

#Preview {
    SearchBar()
}
