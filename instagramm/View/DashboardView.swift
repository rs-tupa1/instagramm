//
//  Home.swift
//  login
//
//  Created by GMO on 12/6/21.
//

import SwiftUI

struct Dashboard: View {
    
    @State var selectedIndex = 0
    
    let tabBarImageNameSelected = [ConstantAsset.home_selected, ConstantAsset.search_selected, ConstantAsset.like_selected, ConstantAsset.profile_selected]
    
    let tabBarImageNameUnSelected = [ConstantAsset.home_unselected, ConstantAsset.search_unselected, ConstantAsset.like_unselected, ConstantAsset.profile_unselected]
    
    var body: some View {
        
        VStack {
            ZStack {
                
                switch selectedIndex {
                case 0:
                    HomeView()
                case 1:
                    Color.black.edgesIgnoringSafeArea(.top)
                case 2:
                    Color.green.edgesIgnoringSafeArea(.top)
                case 3:
                    AccountView()
                    
                default:
                    Color.white.edgesIgnoringSafeArea(.top)
                    
                }
            }
            
            Spacer()
            
            HStack {
                
                ForEach (0..<4) { num in
                    Button (action: {
                        
                        self.selectedIndex = num
                    }, label: {
                        Spacer()
                        
                        if num == selectedIndex {
                            Image(self.tabBarImageNameSelected[num])
                        } else {
                            Image(self.tabBarImageNameUnSelected[num])
                        }
                        
                        Spacer()
                    })
                }
            }
            .padding(.all, 8)
        }
    }
}
