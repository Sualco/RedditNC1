//
//  SubRedditHeader.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct SubRedditHeader: View {
    @State private var isSubscribed = false
    var body: some View {
        HStack{
            Image( systemName: "magnifyingglass")
                .resizable()
                .frame(width: 30.0, height: 30.0)
                .accessibilityLabel("Search button")
                
            Image( systemName: "arrowshape.turn.up.right.circle")
                .resizable()
                .frame(width: 30.0, height: 30.0)
                .padding(5.0)
                .accessibilityLabel("Share button")
            Image( systemName: "ellipsis.circle")
                .resizable()
                .frame(width: 30.0, height: 30.0)
                .accessibilityLabel("more action button")
              
        }
        .padding(.leading, 220.0)
        
        

            Image("logosubreddit")
                .resizable()
                .frame(width: 60.0, height: 60.0)
                .padding(.trailing, 300)
                .offset(x: 0, y: 30)
            
            Text ("r/Swift")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing,135.0)
                .padding(.top, -35)
                .padding()
                .accessibilityLabel("Subreddit Name: r/Swift")
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundStyle(Color.blue)
            .overlay(
        Button(isSubscribed ? "Unsubscribe" : "Subscribe") {
            isSubscribed.toggle()
        })
            .foregroundStyle(Color.white)
            .padding(.leading, 160.0)
            .padding(.top, -40.0)
            
            Text("Swift is a general-purpose programming language built using a modern approach to safety, performance, and software design patterns.")
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.black)
                .padding()
                .accessibilityLabel("Subreddit description: Swift is a general-purpose programming language built using a modern approach to safety, performance, and software design patterns.")
    }
        
    }

#Preview {
    SubRedditHeader()
}
