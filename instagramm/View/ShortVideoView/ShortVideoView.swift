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
        VStack {
            GeometryReader { gr in
                    ScrollViewUI(hideScrollIndicators: false) {
                        VStack(spacing: 0) {
                            ForEach(0...10, id: \.self) { image in
                                PlayerView()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: gr.size.width, height: gr.size.height+100)
                                    .overlay(Color.black.opacity(0.2))
                                    .blur(radius: 1)
                                    .edgesIgnoringSafeArea(.all)
                            }
                        }
                    }
                }
            Spacer()
        }
    }
}

