//
//  ItemNews.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI


@available(iOS 15.0, *)
struct ListDataHomeView: View {
    
    var body: some View {
        
        ForEach(0..<100) {_ in
            ItemNews(title: "admin", image: imageNetwork)
        }
    }
}

@available(iOS 15.0, *)
struct ItemNews: View {
    var title: String
    var image: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack (spacing: 10) {
                ImageNetwork(urlImage: image, width: 35, height: 35)
                    .clipShape(Circle())
                TextCommon(text: title)
                
                Spacer()
                Image(systemName: ConstantAsset.ellipsis)
                    .frame(width: 14, height: 14)
            }
            .padding(.all, 10)
            
            ImageNetwork(urlImage: image, width: .infinity, height: 600)
            
            HStack (spacing: 16) {
                ItemIcon(icon: ConstantAsset.heart)
                ItemIcon(icon: ConstantAsset.bubble_right)
                ItemIcon(icon: ConstantAsset.paperplane)
                
                Spacer()
                ItemIcon(icon: ConstantAsset.bookmark)
            }
            .padding(.all, 10)
            
            ContentStatus(name: "abc", content: buildContent(content: content), listLiker: ["d", "d"])
        }
    }
    
    func buildContent(content: String) -> String {
        var buildContent = content
        if content.count < 50 {
            return content
        }
        buildContent
            .replaceSubrange(...content.index(content.startIndex, offsetBy: 100), with: "...")
        return buildContent
    }
}

struct ItemIcon: View {
    var icon: String
    
    var body: some View {
        Image(systemName: icon)
            .frame(width: 16, height: 16)
            .foregroundColor(.white)
    }
}

struct ContentStatus: View {
    var name: String
    var content: String
    var listLiker: [String]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            TextCommon(text: name)
            TextCommon(text: content)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 5)
            TextCommon(text: "\(listLiker.joined(separator: ",")) others liked")
            
        }
        .padding(.leading, 10)
    }
}

let content = "dnjasjdnjasjndsjandjdnsjndnsnsdndsdssdnndsdkdsamkdskmdskmdkmasdkmskdmasdakmsadmskdmksadkmskmdsamdkdmksdkmdamksamdksskmddsakmadmkadskmdkmdkmdaskmkmdmkasmdkasmkdkaskmmldnjkgwjnefjewunsdsjdjdsjndnsjndjsdnsjsdnjdsnjndsjdsnjsdnj"
