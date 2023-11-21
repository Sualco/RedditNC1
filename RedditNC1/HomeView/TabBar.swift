//
//  TabBar.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
                Thread()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Threads")
                }
            
            Text("Content Tab 2")
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Community")
                }
            
            Text("Content Tab 2")
                .tabItem {
                    Image(systemName: "plus")
                    Text("New Post")
                }
            
            Text("Content Tab 2")
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("Chat")
                }
            
            Text("Content Tab 2")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
                
        }.tint(.black)
        
        
            
    }
}
    
#Preview {
    TabBar()
}
