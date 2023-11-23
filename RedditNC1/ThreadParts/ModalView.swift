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
                            .foregroundStyle(Color("Color"))
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image ("telegram")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Telegram")
                            .foregroundStyle(Color("Color"))
                    }
                }
                
                Button () {
                } label: {
                    VStack{
                        Image ("imessage")
                            .resizable()
                           .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Messages")
                            .foregroundStyle(Color("Color"))
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image ("email")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .trailing)
                        Text ("Email")
                            .foregroundStyle(Color("Color"))
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
                            .foregroundStyle(Color("Color"))
                        
                        Text ("Community")
                            .foregroundStyle(Color("Color"))
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"bookmark")
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .trailing)
                            .foregroundStyle(Color("Color"))
                        
                        Text ("Save")
                            .foregroundStyle(Color("Color"))
                    }
                    }
               
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"link")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .trailing)
                            .foregroundStyle(Color("Color"))
                        
                        Text ("Copy Link")
                            .foregroundStyle(Color("Color"))
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"square.and.arrow.down")
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .trailing)
                            .foregroundStyle(Color("Color"))
                        
                        Text ("Download")
                            .foregroundStyle(Color("Color"))
                    }
                }
                Button () {
                } label: {
                    VStack{
                        Image (systemName:"photo.fill")
                            .resizable()
                            .frame(width: 40, height: 30, alignment: .trailing)
                            .foregroundStyle(Color("Color"))
                        
                        Text ("Copy \n Image")
                            .foregroundStyle(Color("Color"))
                        
                    }
                }.offset(x: 0, y: 15.0)
                
                
                
            }.offset(x:-10,y:0)
        }
    }
}

#Preview {
    ModalView()
}
