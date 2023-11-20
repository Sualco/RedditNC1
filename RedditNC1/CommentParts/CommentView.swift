//
//  CommentView.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 17/11/23.
//

import SwiftUI

var viewC = arrayComment1()

struct CommentView: View {
    var body: some View {
        List (){
            ForEach (viewC.comments1) {baba in
                
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
                            .foregroundStyle(Color.orange)
                            .onTapGesture {
                                viewC.updateCommentUpvote(for: baba)
                            }
                        Text("\(baba.commentUpvote)")
                        Image (systemName: "arrowshape.down")
                            .foregroundStyle(Color.orange)
                            .onTapGesture {
                                viewC.updateCommentDownvote(for: baba)
                            }
                        
                    }
                    
                
            }
            
        }.listStyle(.plain)
            
    }
}
#Preview {
    CommentView()
}
