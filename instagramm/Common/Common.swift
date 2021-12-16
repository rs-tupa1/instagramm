//
//  TextInput.swift
//  login
//
//  Created by GMO on 12/6/21.
//

import SwiftUI

enum TypeInput {
    case email
    case password
    case text
}

struct CustomTextField: View {
    var placeholder: String
    var isPass: Bool = false
    @Binding var text: String
    var errorText: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading)  {
            
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    
                    Text(placeholder)
                        .foregroundColor(.white).opacity(0.5)
                        .padding(.leading)
                }
                Group {
                    if isPass {
                        SecureField(
                            "",
                            text: self.$text
                        )
                    } else {
                        TextField(
                            "",
                            text: self.$text
                        )
                        
                    }
                }
                .padding()
                .colorMultiply(.white)
                .background(Color.white.opacity(0.1))
                .foregroundColor(Color.white)
            }
            
            TextCommon(text: errorText, color: Color.red)
        }
    }
}

struct BorderButtonStyle: ButtonStyle {
    var isActive: Bool = false
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .contentShape(Rectangle())
            .background(isActive ? Color.purple.opacity(0.3) : Color.gray.opacity(0.5))
        
    }
}
