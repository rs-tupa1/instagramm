//
//  AccountView.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack (spacing: 16) {
                    
                    Image(ConstantAsset.Instagram_logo_white_1)
                        .renderingMode(.template)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: ConstantAsset.plus_square)
                    Image(systemName: ConstantAsset.line_3_horizontal)
                }
                .padding(.horizontal, 16)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        HStack {
                            ZStack (alignment: .bottomTrailing) {
                                Image("image1")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                
                                ButtonAdd(size: 12)
                            }
                            
                            Spacer()
                            
                            ColumnText(title: ConstantString.posts, number: 100)
                            ColumnText(title: ConstantString.followers, number: 50)
                            ColumnText(title: ConstantString.following, number: 1000)
                        }
                        .padding(.bottom, 10)
                        
                        TextCommon(text: "Anh Tu")
                        TextCommon(text: "Description ")
                        
                        
                        Spacer()
                    }
                    
                    HStack {
                        Group {
                            Button (action: {}) {
                                TextCommon(text: "Chỉnh sửa trang cá nhân")
                            }
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .padding(.vertical, 5)
                            
                            Button (action: {}) {
                                Image(systemName: ConstantAsset.chevron_down)
                                    .foregroundColor(.white)
                            }
                            .frame(width: 30, height: 30, alignment: .center)
                        }
                        .border(.gray, width: 1)
                    }
                    
                    HStack {
                        Group {
                            Button (action: {}) {
                                Image(systemName: ConstantAsset.square_grid_3x3)
                                    .foregroundColor(.black)
                            }
                            .border(.black, width: 1)
                            

                        }
                        .frame(maxWidth: .infinity, maxHeight: 45, alignment: .center)
                    }
                }
                .padding(.all, 10)
            }
            .background(Color.black)
            .navigationBarHidden(true)
        }
    }
}


struct ColumnText: View {
    var title: String
    var number: Int
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 5) {
            TextCommon(text: "\(number)")
            TextCommon(text: title)
        }
        .padding(.trailing, 10)
    }
}

struct ButtonPost: View {
    var icon: String
    var action: (() -> Void)
    var isSelected: Bool
    
    var body: some View {
        Button (action: {}) {
            Image(systemName: icon)
                .foregroundColor(isSelected ? .black : .gray)
        }
        .border(isSelected ? .black : .gray, width: isSelected ? 1 : 0.5)
    }
}
