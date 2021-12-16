//
//  ButtonCommon.swift
//  instagramm
//
//  Created by GMO on 12/14/21.
//

import SwiftUI

struct ButtonCommon: View {
    var label: String
    var destination: View
    var action: Void? = nil
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            NavigationLink (
                "",
                destination: destination
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            )
            Button(action: {
                action
            }) {
                TextCommon(text: label, color: Color.white)
            }
            .buttonStyle(BorderButtonStyle(isActive: self.isActive))
            .cornerRadius(5)
        }
    }
}

