//
//  ContentView.swift
//  Shared
//
//  Created by GMO on 11/29/21.
//

import SwiftUI
import Combine

struct HomeView: View {
    @StateObject private var homeState = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                VStack {
                    HStack (spacing: 16) {
                        
                        Image(ConstantAsset.Instagram_logo_white_1)
                            .renderingMode(.template)
                            .foregroundColor(.black)
                        Spacer()
                        Image(ConstantAsset.plus_unselected)
                        Image(systemName: ConstantAsset.message)
                    }
                    .padding(.horizontal, 16)
                    ScrollView {
                        StoryHomeView(data: homeState.data, isSelected: homeState.isSelectedStory)
                        Divider()
                        ListDataHomeView()
                        Spacer()
                    }
                }
                
                if (homeState.show) {
                    ZStack (alignment: .topTrailing) {
                        
                        Color.white.edgesIgnoringSafeArea(.all)
                        ShowStory(current: homeState.current)
                    }
                    .transition(.move(edge: .trailing))
                    .onTapGesture {
                        
                        withAnimation(.default) {
                            homeState.show = false
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct Post: Identifiable {
    var id: Int
    var name: String
    var image: String
    var seen: Bool
    var loading: Bool
    var picShow: String
}
