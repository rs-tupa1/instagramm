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
                    
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}
