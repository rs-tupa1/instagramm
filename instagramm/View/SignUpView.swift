//
//  SignUp.swift
//  login
//
//  Created by GMO on 12/6/21.
//

import SwiftUI

struct SignUpView: View {
    @StateObject private var loginState = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isActive: Bool = false
    @State private var isImagePicker: Bool = false
    @State var image = UIImage(imageLiteralResourceName: ConstantAsset.plus_photo)
    
    var body: some View {
        
        NavigationView {
            
            ZStack (alignment: .bottom) {
                
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.vertical)
                
                ScrollView {
                    
                    VStack (spacing: 10) {
                        Image(uiImage: image)
                            .resizable()
                            .renderingMode(!isImagePicker ? .none : .template)
                            .foregroundColor(.white)
                            .cornerRadius(50)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .onTapGesture {
                                self.isImagePicker = true
                            }
                            .sheet(isPresented: $isImagePicker) {
                                ImagePicker(sourceType: .photoLibrary, onImagePicked: { image in
                                    self.image = image
                                })
                            }
                        
                        CustomTextField(placeholder: ConstantString.email, text: $loginState.email, errorText: loginState.emailErrorLable)
                        
                        CustomTextField(placeholder: ConstantString.password, isPass: true, text: $loginState.password, errorText: loginState.passwordErrorLable)
                        
                        CustomTextField(placeholder: ConstantString.fullname, text: $loginState.fullname, errorText: loginState.fullnameErrorLable)
                        
                        CustomTextField(placeholder: ConstantString.username, text: $loginState.username, errorText: loginState.usernameErrorLable)
                        
                        Button(action: {
                            self.isActive = loginState.signUp()
                        }) {
                            
                            TextCommon(text: ConstantString.signUp, color: Color.white)
                                .padding()
                        }
                        .buttonStyle(BorderButtonStyle(isActive: loginState.signUp()))
                        .background(Color.purple.opacity(0.2))
                        .cornerRadius(5)
                        
                        NavigationLink (
                            "",
                            destination: Dashboard()
                                .navigationBarTitle("")
                                .navigationBarHidden(true),
                            isActive: self.$isActive
                        )
                        
                        Spacer()
                        
                        HStack {
                            
                            TextCommon(text: ConstantString.alreadyHaveAnAccount, color: Color.white)
                            TextCommon(text: ConstantString.signIn, color: Color.white, fontWeight: .bold)
                                .onTapGesture {
                                    self.presentationMode.wrappedValue.dismiss()
                                }
                        }
                    }
                    .padding(.all)
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}
