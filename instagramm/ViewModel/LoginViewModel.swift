//
//  LoginState.swift
//  instagramm
//
//  Created by GMO on 12/14/21.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @Published var isValidEmail = true
    @Published var isValidPassword = true
    @Published var isValidFullname = true
    @Published var isValidUsername = true
    
    @Published var isSubmit = false
    private var cancellableset: Set<AnyCancellable> = []
    
    
    init() {
        $email
            .map { email in
                if email.isEmpty {
                    return true
                }
                return textFieldValidator(value: email, type: TypeInput.email)
            }
            .assign(to: \.isValidEmail, on: self)
            .store(in: &cancellableset)
        $password
            .map { password in
                if password.isEmpty {
                    return true
                }
                return textFieldValidator(value: password, type: TypeInput.password)
            }
            .assign(to: \.isValidPassword, on: self)
            .store(in: &cancellableset)
        $fullname
            .map { fullname in
                if fullname.isEmpty {
                    return true
                }
                return fullname.count > ConstantNumber.zero
            }
            .assign(to: \.isValidFullname, on: self)
            .store(in: &cancellableset)
        $username
            .map { username in
                if username.isEmpty {
                    return true
                }
                return username.count > ConstantNumber.zero
            }
            .assign(to: \.isValidUsername, on: self)
            .store(in: &cancellableset)
    }
    
    var emailErrorLable: String {
        isValidEmail ? "" : ConstantString.isValidEmail
    }
    var passwordErrorLable: String {
        isValidPassword ? "" : ConstantString.isValidPassword
    }
    var fullnameErrorLable: String {
        isValidFullname ? "" : ConstantString.isValidText
    }
    var usernameErrorLable: String {
        isValidUsername ? "" : ConstantString.isValidText
    }
    
    func login() -> Bool {
        if email.isEmpty || password.isEmpty {
            return false
        }
        return isValidEmail && isValidPassword
    }
    
    func signUp() -> Bool {
        if email.isEmpty || password.isEmpty || fullname.isEmpty || username.isEmpty {
            return false
        }
        return isValidEmail && isValidPassword && isValidFullname && isValidUsername
    }
}
