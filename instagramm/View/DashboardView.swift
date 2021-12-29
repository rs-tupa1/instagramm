//
//  Home.swift
//  login
//
//  Created by GMO on 12/6/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct Dashboard: View {
    
    @State var selectedIndex = 0
    
    let tabBarImageNameSelected = [ConstantAsset.home_selected, ConstantAsset.search_selected, ConstantAsset.film, ConstantAsset.like_selected, ConstantAsset.profile_selected]
    
    let tabBarImageNameUnSelected = [ConstantAsset.home_unselected, ConstantAsset.search_unselected, ConstantAsset.film_fill, ConstantAsset.like_unselected, ConstantAsset.profile_unselected]
    
    @available(iOS 15.0, *)
    var body: some View {
        
        ZStack {
            Color.black.opacity(0.9).edgesIgnoringSafeArea(.vertical)
            
            VStack {
                ZStack {
                    
                    switch selectedIndex {
                    case 0:
                        HomeView()
                    case 1:
                        SearchView()
                    case 2:
                        ShortVideoView()
                    case 3:
                        Color.green.edgesIgnoringSafeArea(.top)
                    case 4:
                        AccountView()
                    default:
                        Color.white.edgesIgnoringSafeArea(.top)
                    }
                }
                
                HStack {
                    ForEach (0..<5) { num in
                        Button (action: {
                            
                            self.selectedIndex = num
                        }, label: {
                            Spacer()
                            
                            if num == selectedIndex {
                                Image(systemName: self.tabBarImageNameSelected[num])
                                    .foregroundColor(.blue)
                            } else {
                                Image(systemName: self.tabBarImageNameUnSelected[num])
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        })
                    }
                }
                .padding(.all, 8)
            }
        }
    }
}
