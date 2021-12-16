//
//  SwiftUIView.swift
//  tutorial
//
//  Created by GMO on 11/29/21.
//

import SwiftUI

struct CircleImage: View {
    var image: String
    var isIcon: Bool = false
    
    var body: some View {
        
        Group {
            if isIcon {
                Image(systemName: image)
            } else {
                Image(image)
            }
        }
        .frame(width: 60, height: 60)
        .clipShape(Circle())
    }
}
