//
//  ShowStory.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI

@available(iOS 15.0, *)
struct ShowStory: View {
    var current: Post!
    
    var body: some View {
        
        VStack (alignment: .center,spacing: 15) {
            
            HStack (spacing: 15) {
                ImageNetwork(urlImage: self.current.image, width: 55, height: 55)
                    .clipShape(Circle())
                TextCommon(text: self.current.name)
                Spacer()
            }
            .padding(.leading)
            
            Spacer()
            ImageNetwork(urlImage: self.current.picShow, width: .infinity, height: .infinity)
            Spacer()
        }
        .padding(.top)
        .background(Color.black)
    }
}
