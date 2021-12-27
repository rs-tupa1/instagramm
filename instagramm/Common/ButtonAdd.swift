//
//  ButtonAdd.swift
//  instagramm
//
//  Created by Anh Tú on 27/12/2564 BE.
//

import SwiftUI

struct ButtonAdd: View {
    var size: Double
    
    var body: some View {
        Button(action: {}) {
            
            Image(systemName: ConstantAsset.plus)
                .resizable()
                .frame(width: size, height: size)
                .foregroundColor(.white)
                .padding(.all, 5)
        }
        .background(Color.blue)
        .clipShape(Circle())
        .offset(x: 3)
    }
}
