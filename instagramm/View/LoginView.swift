//
//  loginScreen.swift
//  login
//
//  Created by GMO on 12/3/21.
//

import SwiftUI
import Combine

@available(iOS 15.0, *)
@available(iOS 15.0, *)
struct LoginView: View {
    @StateObject private var loginState = LoginViewModel()
    @State private var isActive: Bool = false
    @State private var isSignUp: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                NavigationLink (
                    "",
                    destination: Dashboard()
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: self.$isActive
                )
                
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.vertical)
                
                VStack (spacing: 10) {
                    
                    Image(ConstantAsset.Instagram_logo_white)
                        .padding()
                    
                    CustomTextField(placeholder: ConstantString.email, text: $loginState.email, errorText: loginState.emailErrorLable)
                    
                    CustomTextField(placeholder: ConstantString.password, isPass: true, text: $loginState.password, errorText: loginState.passwordErrorLable)
                    
                    Button(action: {
                        self.isActive = loginState.login()
                    }) {
                        TextCommon(text: ConstantString.logIn, color: Color.white)
                    }
                    .buttonStyle(BorderButtonStyle(isActive: loginState.login()))
                    .cornerRadius(5)

                    HStack {
                        
                        TextCommon(text: ConstantString.forgotYourPassword, color: Color.white)
                        TextCommon(text: ConstantString.getHelpSigingIn, color: Color.white, fontWeight: .bold)
                            .onTapGesture {
                                
                            }
                    }
                    Spacer()
                    
                    HStack {
                        
                        TextCommon(text: ConstantString.dontHaveAnAccount, color: Color.white)
                        TextCommon(text: ConstantString.signUp, color: Color.white, fontWeight: .bold)
                            .onTapGesture {
                                self.isSignUp = true
                            }
                        NavigationLink ("", destination: SignUpView(), isActive: self.$isSignUp)
                    }
                }
                .padding(.all)
            }
            .navigationBarHidden(true)
        }
    }
}
