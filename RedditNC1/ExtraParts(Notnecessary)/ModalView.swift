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
            
            Text("Share in...")
                .font(.headline)
                .padding(.trailing, 240)
            
            HStack{
                Button () {
                } label: {
                    Image ("whatsapp")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .trailing)
                }
                Button () {
                } label: {
                    Image ("telegram")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .trailing)
                }
                .padding()
                Button () {
                } label: {
                    Image ("imessage")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .trailing)
                }
                Button () {
                } label: {
                    Image ("email")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .trailing)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ModalView()
}
