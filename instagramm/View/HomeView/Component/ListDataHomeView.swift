//
//  ItemNews.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI


struct ListDataHomeView: View {
    
    var body: some View {
        
        ForEach(DataSimple.data) {i in
            ItemNews(title: i.name, image: i.image)
        }
    }
}

struct ItemNews: View {
    var title: String
    var image: String
    
    var body: some View {
        VStack {
            HStack (spacing: 10) {
                Image(ConstantAsset.image1)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                
                TextCommon(text: title)
                
                Spacer()
                
                Image(systemName: ConstantAsset.ellipsis)
                    .frame(width: 14, height: 14)
            }
            .padding(.all, 10)
            
            Image(image)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 400)
            
            HStack (spacing: 16) {
                ItemIcon(icon: ConstantAsset.heart)
                ItemIcon(icon: ConstantAsset.bubble_right)
                ItemIcon(icon: ConstantAsset.paperplane)
                
                Spacer()
                ItemIcon(icon: ConstantAsset.bookmark)
            }
            .padding(.all, 10)
        }
    }
}

struct ItemIcon: View {
    var icon: String
    
    var body: some View {
        Image(systemName: icon)
            .frame(width: 16, height: 16)
            .foregroundColor(.black)
    }
}
