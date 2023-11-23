//
//  Thread.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 15/11/23.
//

import SwiftUI

struct Thread: View {
@ObservedObject var viewT = ThreadStructure()
@State private var uarrowColor: Color = .black
@State private var darrowColor: Color = .black
    
    var body: some View {
        
        NavigationStack{
            
            List {
                ForEach (viewT.structure) { bubu in
                    NavigationLink {
                        ThreadView(threadV : bubu)
                        
                    }
                label: {
                        if let imageP = bubu.image, !imageP.isEmpty {
                            
                            VStack(alignment: .center){
                                HStack{
                                    Image(bubu.userlogo)
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)
                                        .accessibilityLabel("User logo")
                                    Text(bubu.user)
                                        .fontWeight(.light)
                                        .accessibilityLabel("Username \(bubu.user)")
                                }.padding(.trailing, 180.0)
                                
                                Text (bubu.title)
                                    .fontWeight(.bold)
                                    .accessibilityLabel("thread title: \(bubu.title)")
                                    
                                
                                Image (imageP)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.top)
                                    .frame(width: 240.0, height: 180.0)
                                
                                Text ("Comments")
                                    .font(.caption)
                                    .padding(8.0)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.black, lineWidth: 1))
                                    .offset(x: 0, y: 75.0)
                                
                                Image (systemName: "arrowshape.turn.up.right")
                                    .padding(5)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        
                                        .stroke(Color.black, lineWidth: 1))
                                    .offset(x: 140.0, y: 40.0)
                                
                                HStack {
                                    
                                    Image ( systemName: "arrowshape.up")
                                        
                                        .foregroundStyle(bubu.hasUpvoted ? .orange : .black)
                                            .onTapGesture {
                                            if !bubu.hasUpvoted {
                                                viewT.updateUpvote(for: bubu)
                                                uarrowColor = Color.orange
                                                darrowColor = Color.black
                                            } else {
                                                viewT.undoUpvote(for: bubu)
                                                uarrowColor = Color.black
                                            }
                                            }
                                            .accessibilityLabel("Upvote button")
                                            .accessibilityHint("Click to Upvote")
                                    Text ("\(bubu.upvote)")
                                        .accessibilityLabel("Upvote number: \(bubu.upvote)")
                                    
                                    Image (systemName: "arrowshape.down")
                                        .foregroundStyle(bubu.hasDownvoted ? .cyan : .black)
                                        .onTapGesture {
                                            if !bubu.hasDownvoted {
                                                        viewT.updateDownvote(for: bubu)
                                                        darrowColor = .cyan
                                                        uarrowColor = .black
                                                    } else {
                                                        viewT.undoDownvote(for: bubu)
                                                        darrowColor = .black
                                                    }
                                            
                                        }
                                        .accessibilityLabel("Downvote Button")
                                        .accessibilityHint("Click to downvote")
                                    
        
                                   
                                    
                                  
                                    
                                }.padding(5.5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.black, lineWidth: 1))
                                .padding(.trailing, 200.0)
                                    
                            }
                            
                        }
                        else {
                            
                            VStack {
                                
                                HStack{
                                    Image(bubu.userlogo)
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)
                                        .accessibilityLabel("User logo")
                                    Text(bubu.user)
                                        .fontWeight(.light)
                                        .accessibilityLabel("Username: \(bubu.user)")
                                }.padding(.trailing, 140.0)
                                
                                Text (bubu.title)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .accessibilityLabel("thread title: \(bubu.title)")
                                    
                                Text (bubu.description)
                                    .padding()
                                    .font(.body)
                                    .fontWeight(.light)
                                    .foregroundColor(Color.black)
                                    .accessibilityLabel("thread description: \(bubu.description)")
                                
                                Text ("Comments")
                                    .font(.caption)
                                    .padding(8.0)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.black, lineWidth: 1))
                                    .offset(x: 0, y: 74.0)
                                
                                Image (systemName: "arrowshape.turn.up.right")
                                    .padding(5)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        
                                        .stroke(Color.black, lineWidth: 1))
                                    .offset(x: 140.0, y: 38.0)
                                
                                HStack {
                                    Image ( systemName: "arrowshape.up")
                                        .foregroundStyle(bubu.hasUpvoted ? .orange : .black)
                                       
                                        .onTapGesture {
                                            if !bubu.hasUpvoted {
                                                viewT.updateUpvote(for: bubu)
                                                uarrowColor = Color.orange
                                            } else {
                                                viewT.undoUpvote(for: bubu)
                                                uarrowColor = Color.black
                                            }
                                        }
                                        .accessibilityLabel("Upvote button")
                                        .accessibilityHint("click to upvote")
                                    Text ("\(bubu.upvote)")
                                        .accessibilityLabel("upvote number: \(bubu.upvote)")
                                    
                                    Image (systemName: "arrowshape.down")
                                        .foregroundStyle(bubu.hasDownvoted ? .cyan : .black)
                                        .onTapGesture {
                                            if !bubu.hasDownvoted {
                                                        viewT.updateDownvote(for: bubu)
                                                        darrowColor = .cyan
                                                    } else {
                                                        viewT.undoDownvote(for: bubu)
                                                        darrowColor = .black
                                                    }
                                            
                                        }
                                        .accessibilityLabel("Downvote button")
                                        .accessibilityHint("Click to downvote")
                                    
                                }.padding(5.5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.black, lineWidth: 1))
                                .padding(.trailing, 200.0)
                               
                            }
                            
                            
                        }
                        
                }
                    
                }
                
            }.listStyle(.plain)
        }.accentColor(.black)
        
    }
}
    
struct Thread_Previews: PreviewProvider {
        static var previews: some View {
            Thread()
        }
    }
