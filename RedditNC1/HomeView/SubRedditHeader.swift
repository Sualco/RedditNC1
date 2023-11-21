//
//  SubRedditHeader.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct SubRedditHeader: View {
    
    var body: some View {
        
            
            Image("logosubreddit")
                .resizable()
                .frame(width: 60.0, height: 60.0)
                .padding(.trailing, 300)
            
            
            Text ("r/Swift")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing,135.0)
                .padding(.top, -60)
                .padding()
            
            Text("Swift is a general-purpose programming language built using a modern approach to safety, performance, and software design patterns.")
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.black)
                .padding()
        }
        
    }

#Preview {
    SubRedditHeader()
}
