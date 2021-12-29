//
//  ShortVideoView.swift
//  instagramm
//
//  Created by Anh Tú on 29/12/2564 BE.
//

import SwiftUI

@available(iOS 15.0, *)
struct ShortVideoView: View {
    var body: some View {
        GeometryReader { gr in
            ScrollViewUI(hideScrollIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(0...10, id: \.self) { image in
                        ItemVideo(width: gr.size.width, height: gr.size.height)
                    }
                }
                Spacer()
            }
        }
        .statusBar(hidden: true)
        .edgesIgnoringSafeArea(.all)
    }
}

@available(iOS 15.0, *)
struct ItemVideo: View {
    var width: Double
    var height: Double
    
    var body: some View {
    
        ZStack (alignment: .bottom) {
            PlayerView()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height)
            
            HStack (alignment: .bottom){
                
                VStack (alignment: .leading, spacing: 10) {
                    HStack(spacing: 5) {
                        ImageNetwork(urlImage: imageNetwork, width: 30, height: 30)
                            .clipShape(Circle())
                        TextCommon(text: "admin",size: 16, fontWeight: .bold)
                    }
                    
                    TextCommon(text: "dasdhashdashdsahadhshdas", size: 10)
                }
                .padding(.bottom, 10)
                
                Spacer()
                
                VStack (alignment: .trailing) {
                    IconTrailing(number: 1000, asset: ConstantAsset.heart, isNumber: true)
                    IconTrailing(number: 500, asset: ConstantAsset.message, isNumber: true)
                    IconTrailing(number: 0, asset: ConstantAsset.paperplane)
                    IconTrailing(number: 0, asset: ConstantAsset.ellipsis)
                    
                    ImageNetwork(urlImage: imageNetwork, width: 40, height: 40)
                        
                        .border(.white, width: 4)
                        .cornerRadius(12)
                        
                }
            }
            .padding(.all)
        }
    }
}

struct IconTrailing: View {
    var number: Int
    var asset: String
    var isNumber: Bool = false
    
    var body: some View {
        VStack (spacing: 8) {
            Image(systemName: asset)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            if isNumber == true {TextCommon(text: getNumber(), size: 16)}
        }
    }
    
    func getNumber() -> String {
        var newNumber = 0.0
        if number > 1000000 {
            newNumber = Double(number) / 1000000.0
            return "\(newNumber)M"
        }
        if number > 1000 {
            newNumber = Double(number) / 1000.0
            return "\(newNumber)K"
        }
        return "\(number)"
    }
}

