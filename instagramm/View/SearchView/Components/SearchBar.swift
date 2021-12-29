//
//  SearchBar.swift
//  instagramm
//
//  Created by Anh Tú on 29/12/2564 BE.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isDelete: Bool
    var onClearText: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: ConstantAsset.search_unselected)
                .foregroundColor(.gray)
                .padding(.leading, 5)
            TextSearch(placeholder: "Search", text: $text)
                .padding(.vertical, 5)
            Spacer()
            if isDelete == true {
                Image(systemName: ConstantAsset.multiply_circle_fill)
                    .foregroundColor(.gray)
                    .padding(.trailing, 5)
                    .onTapGesture {
                        onClearText()
                    }
            }
        }
        .background(Color.gray.opacity(0.5))
        .cornerRadius(10)
        .padding(.all, 10)
    }
}

struct TextSearch: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.gray)
            }
            TextField(
                "",
                text: self.$text
            )
                .foregroundColor(Color.white)
        }
    }
}
