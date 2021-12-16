//
//  Controller.swift
//  Instagram
//
//  Created by GMO on 12/9/21.
//

import Foundation

func textFieldValidator(value: String, type: TypeInput) -> Bool {
    let emailFormat = ConstantString.validateEmail
    
    let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
    
    switch type {
    case TypeInput.email:
        
        return emailPredicate.evaluate(with: value)
    case TypeInput.password:
        
        return value.count > ConstantNumber.maxLengthPassword
    case .text:
        
        return true
    }
}
