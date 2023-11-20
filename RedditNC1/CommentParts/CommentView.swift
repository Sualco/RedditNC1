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
        List{
            ForEach (viewC.comments1) {baba in
                Section {
                        Text( baba.comment)
                        Text( baba.comment)
                        Text( baba.comment)
                        Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    Text( baba.comment)
                    }
                
            }
            
        }.listStyle(.plain)
            
    }
}
#Preview {
    CommentView()
}
