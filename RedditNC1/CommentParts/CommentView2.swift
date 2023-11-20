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
    CommentView2()
}
