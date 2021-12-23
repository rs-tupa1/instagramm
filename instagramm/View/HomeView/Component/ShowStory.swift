//
//  ShowStory.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI

struct ShowStory: View {
    var current: Post!
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {
            
            GeometryReader {_ in
                
                VStack {
                    
                    Spacer()
                    
                    Image(self.current.picShow)
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 500)
                    
                    Spacer()
                    
                }
            }
            
            VStack (spacing: 15) {
                
                HStack (spacing: 15) {
                    
                    Image(self.current.image)
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                    
                    TextCommon(text: self.current.name)
                    
                    Spacer()
                }
                .padding(.leading)
            }
            .padding(.top)
        }
    }
}
