//
//  ModalView.swift
//  RedditNC1
//
//  Created by Claudio Borrelli on 23/11/23.
//

import SwiftUI

struct ModalView: View {
    
    var body: some View {
        
        
        VStack{
            
            Text("Share to...")
                .font(.headline)
                .padding(.trailing, 240)
            HStack{
                Button () {
                } label: {
                    VStack{
                        Image ("whatsapp")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .trailing)
                        Text("Whatsapp")
                            .foregroundStyle(.black)
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image ("telegram")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Telegram")
                            .foregroundStyle(.black)
                    }
                }
                
                Button () {
                } label: {
                    VStack{
                        Image ("imessage")
                            .resizable()
                           .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Messages")
                            .foregroundStyle(.black)
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image ("email")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Email")
                            .foregroundStyle(.black)
                    }
                }
                
                .padding()
                
            }
            
            HStack{
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"person")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .trailing)
                            .foregroundStyle(Color.black)
                        
                        Text ("Community")
                            .foregroundStyle(.black)
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"bookmark")
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .trailing)
                            .foregroundStyle(Color.black)
                        
                        Text ("Save")
                            .foregroundStyle(.black)
                    }
                    }
               
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"link")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .trailing)
                            .foregroundStyle(Color.black)
                        
                        Text ("Copy Link")
                            .foregroundStyle(.black)
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"square.and.arrow.down")
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .trailing)
                            .foregroundStyle(Color.black)
                        
                        Text ("Download")
                            .foregroundStyle(.black)
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"photo.fill")
                            .resizable()
                            .frame(width: 40, height: 30, alignment: .trailing)
                            .foregroundStyle(Color.black)
                        
                        Text ("Copy \n Image")
                            .foregroundStyle(.black)
                        
                    }
                }.offset(x: 0, y: 15.0)
                
                
                
            }.offset(x:-10,y:0)
        }
    }
}

#Preview {
    ModalView()
}
