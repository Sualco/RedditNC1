//
//  CommentView2.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 20/11/23.
//

import SwiftUI

var viewC2 = arrayComment2()

struct CommentView2: View {
    var body: some View {
        List{
            ForEach (viewC2.comments2) {baba in
                VStack{
                    HStack{
                        Image( baba.commentLogo)
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                        Text (baba.userComment)
                    }
                    
                   
                }
                Text( baba.comment)
                HStack{
                    Image (systemName: "arrow.uturn.left")
                        .padding(.trailing)
                    Image (systemName: "arrowshape.up")
                        .foregroundStyle(Color.black)
                        .onTapGesture {
                            viewC.updateCommentUpvote(for: baba)
                        }
                    Text("\(baba.commentUpvote)")
                    Image (systemName: "arrowshape.down")
                        .foregroundStyle(Color.black)
                        .onTapGesture {
                            viewC.updateCommentDownvote(for: baba)
                        }
                    
                }
                
            }
            
        }.listStyle(.plain)
            
    }
}

#Preview {
    CommentView2()
}
