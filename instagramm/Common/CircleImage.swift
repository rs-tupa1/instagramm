//
//  SwiftUIView.swift
//  tutorial
//
//  Created by GMO on 11/29/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("image").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
