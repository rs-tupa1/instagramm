//
//  SearchView.swift
//  instagramm
//
//  Created by Anh Tú on 28/12/2564 BE.
//

import SwiftUI

@available(iOS 15.0, *)

struct SearchView: View {
    @StateObject private var searchView = SearchViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchView.textSearch, isDelete: $searchView.isDelete, onClearText: {
                    searchView.onClearText()
                })
                
                ScrollView {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
                        ForEach((0...100), id: \.self) { item in
                            ImageNetwork(urlImage: imageNetwork, width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3)
                                .padding(.bottom, 10)
                        }
                    }
                }
                Spacer()
            }
            .background(Color.black)
            .navigationBarHidden(true)
        }
    }
}
