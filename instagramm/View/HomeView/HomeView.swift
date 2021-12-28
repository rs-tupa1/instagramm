//
//  ContentView.swift
//  Shared
//
//  Created by GMO on 11/29/21.
//

import SwiftUI
import Combine

@available(iOS 15.0, *)
struct HomeView: View {
    @StateObject private var homeState = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                VStack {
                    HStack (spacing: 16) {
                        
                        Image(ConstantAsset.Instagram_logo_white_1)
                            .renderingMode(.template)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: ConstantAsset.plus_square)
                            .foregroundColor(.white)
                        Image(systemName: ConstantAsset.message)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16)
                    .background(Color.white.opacity(0.05))
                    
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
            .background(Color.black)
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
