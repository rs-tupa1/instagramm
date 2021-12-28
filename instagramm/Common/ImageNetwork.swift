//
//  ImageNetwork.swift
//  instagramm
//
//  Created by Anh Tú on 28/12/2564 BE.
//

import SwiftUI

@available(iOS 15.0, *)
struct ImageNetwork: View {
    var urlImage: String
    var width: Double
    var height: Double
    
    var body: some View {
        
        AsyncImage(url: URL(string: urlImage)) {image in
            image
                .resizable()
                .frame(maxWidth: width, maxHeight: height)
        } placeholder: {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
        }
    }
}
