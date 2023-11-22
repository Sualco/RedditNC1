//
//  CommentView2.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 20/11/23.
//

import SwiftUI

var viewC2 = arrayComment2()



struct CommentView2: View {
    @State private var upvoteColors: [Color] = Array(repeating: .black, count: viewC2.comments2.count)
    @State private var downvoteColors: [Color] = Array(repeating: .black, count: viewC2.comments2.count)
    
    var body: some View {
        List {
            ForEach(viewC2.comments2.indices, id: \.self) { index in
                let baba = viewC2.comments2[index]
                
                VStack {
                    HStack {
                        Image(baba.commentLogo)
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .accessibilityLabel("User logo")
                        Text(baba.userComment)
                            .accessibilityLabel("Username: \(baba.userComment)")
                    }
                }
                Text(baba.comment)
                    .accessibilityLabel("Comment: \(baba.comment)")
                HStack {
                    Image(systemName: "arrow.uturn.left")
                        .padding(.trailing)
                        .accessibilityHint("Reply the comment")
                        
                    Image(systemName: "arrowshape.up")
                        .foregroundStyle(upvoteColors[index])
                        .onTapGesture {
                            if upvoteColors[index] == .orange {
                                viewC2.undoCommentUpvote(for: baba)
                                upvoteColors[index] = .black
                            } else {
                                viewC2.updateCommentUpvote(for: baba)
                                upvoteColors[index] = .orange
                                // Reset the color of the corresponding downvote arrow
                                downvoteColors[index] = .black
                            }
                        }
                        .accessibilityLabel("Upvote button")
                        .accessibilityHint("Click to upvote")
                    
                    Text("\(baba.commentUpvote)")
                        .accessibilityLabel("Upvote number: \(baba.commentUpvote)")
                    
                    
                    Image(systemName: "arrowshape.down")
                        .foregroundStyle(downvoteColors[index])
                        .onTapGesture {
                            if downvoteColors[index] == .blue {
                                viewC2.undoCommentDownvote(for: baba)
                                downvoteColors[index] = .black
                            } else {
                                viewC2.updateCommentDownvote(for: baba)
                                downvoteColors[index] = .blue
                                // Reset the color of the corresponding upvote arrow
                                upvoteColors[index] = .black
                            }
                        }
                        .accessibilityLabel("Downvote button")
                        .accessibilityHint("Click to downvote")
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    CommentView2()
}
