//
//  ThreadView.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 16/11/23.
//

import SwiftUI

struct ThreadView: View {
    var threadV: Tdetails
    
    var body: some View {
        
        VStack {
            HStack{
                Image(threadV.userlogo)
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .accessibilityLabel("user logo")
                Text(threadV.user)
                    .fontWeight(.light)
                    .accessibilityLabel("Username: \(threadV.user)")
            }.padding(.trailing, 200.0)
            
            
            Text(threadV.title)
                .font(.title)
                .padding()
                .accessibilityLabel("Thread title: \(threadV.title)")
            
            if let imageV = threadV.image, !imageV.isEmpty {
                Image(threadV.image ?? "")
                    .resizable()
                    .scaledToFit()
                                }
            
            Text(threadV.description)
                .font(.body)
                .fontWeight(.light)
                .padding()
                .accessibilityLabel("Thread Description: \(threadV.description)")
            
            Text ("Comments")
                .font(.caption)
                .padding(8.0)
                .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.black, lineWidth: 1))
                .offset(x: 0, y: 73.0)
            
            Image (systemName: "arrowshape.turn.up.right")
                .padding(5)
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                  .stroke(Color.black, lineWidth: 1))
                .offset(x: 140.0, y: 35.0)
                .accessibilityLabel("Share Button")
            
            HStack {
                Image(systemName: "arrowshape.up")
                    
                    .foregroundStyle(Color.black)
                    .accessibilityLabel("Upvote Button")
                    .accessibilityHint("Click to upvote")
                Text("\(threadV.upvote)")
                    .accessibilityLabel("Upvote number: \(threadV.upvote)")
                    
                Image(systemName: "arrowshape.down")
                    
                    .foregroundStyle(Color.black)
                    .accessibilityLabel("Downvote button")
                    .accessibilityHint("Click to downvote")
            }.padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.black, lineWidth: 1))
                .padding(.trailing, 200.0)
            
            
            CommentView2()
                .padding(.top)
        }
    }
    
   
}

struct ThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadView(threadV: Tdetails(user:"u/lol", userlogo: "logor1",title: "Example", description: "Description", upvote: 0, downvote: 0, hasUpvoted: false, hasDownvoted: false))
    }
}
