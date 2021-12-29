//
//  Constant.swift
//  instagramm
//
//  Created by GMO on 12/14/21.
//

import SwiftUI
import Foundation

let imageNetwork = "https://picsum.photos/200"

struct ConstantAsset {
    static let size14 = 14
    static let cancel_shadow = "cancel_shadow"
    static let comment = "comment"
    static let gear = "gear"
    static let grid = "grid"
    static let home_selected = "house.fill"
    static let home_unselected = "house"
    static let image = "image"
    static let image1 = "image1"
    static let image2 = "image1"
    static let image3 = "image2"
    static let image4 = "image3"
    static let image5 = "image4"
    static let image6 = "image5"
    static let image7 = "image6"
    static let image8 = "image7"
    static let image9 = "image8"
    static let image10 = "image9"
    static let image11 = "image11"
    static let image12 = "image12"
    static let image13 = "image13"
    static let image14 = "image14"
    static let image15 = "image15"
    static let Instagram_logo_white_1 = "Instagram_logo_white-1"
    static let Instagram_logo_white = "Instagram_logo_white"
    static let film = "film"
    static let film_fill = "film.fill"
    static let like_selected = "heart.fill"
    static let like_unselected = "heart"
    static let list = "list"
    static let play = "play"
    static let plus_photo = "plus_photo"
    static let plus_unselected = "plus_unselected"
    static let profile_selected = "person.circle.fill"
    static let profile_unselected = "person.circle"
    static let ribbon = "ribbon"
    static let right_arrow_shadow = "right_arrow_shadow"
    static let save_shadow = "save_shadow"
    static let search_selected = "magnifyingglass"
    static let search_unselected = "magnifyingglass"
    static let send2 = "send2"
    static let upload_image_icon = "upload_image_icon"
    static let plus = "plus"
    static let ellipsis = "ellipsis"
    static let heart = "heart"
    static let bubble_right = "bubble.right"
    static let paperplane = "paperplane"
    static let bookmark = "bookmark"
    static let message = "message"
    static let plus_square = "plus.square"
    static let line_3_horizontal = "line.3.horizontal"
    static let chevron_down = "chevron.down"
    static let square_grid_3x3 = "square.grid.3x3"
    static let multiply_circle_fill = "multiply.circle.fill"
}

struct ConstantString {
    static let email = "Email"
    static let password = "Password"
    static let fullname = "Fullname"
    static let username = "Username"
    static let logIn = "Log In"
    static let forgotYourPassword = "Forgot your password?"
    static let getHelpSigingIn = " Get help siging in."
    static let dontHaveAnAccount = "Don't have an account?"
    static let signUp = "Sign Up"
    static let signIn = "Sign In"
    static let alreadyHaveAnAccount = "Already have an account?"
    static let isValidEmail = "Email a valid email address"
    static let isValidPassword = "Password minimum 6 characters"
    static let isValidText = "Can't be left empty"
    static let validateEmail = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
    static let storyMain = "Tin của bạn"
    static let posts = "Bài viết"
    static let followers = "Người theo dõi"
    static let following = "Đang theo dõi"
}

struct ConstantNumber {
    static let size14 = 14
    static let maxLengthPassword = 5
    static let zero = 0
}

struct DataSimple {
    static let data = [
        Post(id: 0, name: "mot", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 1, name: "hai", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 2, name: "ba", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 3, name: "bon", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 4, name: "nam", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 5, name: "nam", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 6, name: "sau", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 7, name: "bay", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 8, name: "tam", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        Post(id: 9, name: "chin", image: imageNetwork, seen: false, loading: false, picShow: imageNetwork),
        
    ]
}
