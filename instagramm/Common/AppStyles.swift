//
//  AppStyles.swift
//  instagramm
//
//  Created by GMO on 12/14/21.
//

import SwiftUI

struct TextCommon: View {
    var text: String
    var color: Color = Color.black
    var size: Int = ConstantNumber.size14
    var fontWeight: Font.Weight = .medium
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(.system(size: CGFloat(size)))
            .fontWeight(fontWeight)
    }
}
