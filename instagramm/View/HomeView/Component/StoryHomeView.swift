//
//  StoryHomeView.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI

struct StoryHomeView: View {
    var data: [Post]
    var isSelected: ((Int) -> Void)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                
                Spacer(minLength: 10)
                
                VStack {
                    Button(action: {
                        
                        
                    }) {
                        ZStack(alignment: .bottomTrailing){
                            
                            Image(ConstantAsset.image1).resizable().frame(width: 56, height: 56).clipShape(Circle())
                            
                            ButtonAdd(size: 12)
                        }
                    }
                    
                    TextCommon(
                        text: ConstantString.storyMain,
                        color: Color.gray
                    )
                }
                
                ForEach(0..<self.data.count ){ i in
                    
                    VStack {
                        
                        ZStack {
                            
                            Image(self.data[i].image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            
                            
                            if( !self.data[i].seen) {
                                
                                Circle()
                                    .trim(from: 0, to: 2)
                                    .stroke(
                                        AngularGradient(
                                            gradient: .init(colors: [.yellow, .orange, .red]),
                                            center: .center),
                                        style: StrokeStyle(lineWidth: 4, dash: [self.data[i].loading ? 4 : 0]))
                                    .frame(width: 56, height: 56)
                                    .rotationEffect(.init(degrees: self.data[i].loading ? 360 : 0))
                            }
                        }
                        
                        TextCommon(text: self.data[i].name, color: Color.black)
                    }
                    .onTapGesture {
                        
                        isSelected(i)
                    }
                }
            }
        }
        .padding(.top, 8)
    }
}
