//
//  ContentView.swift
//  Shared
//
//  Created by GMO on 11/29/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var show = false
    @State var current: Post!
    
    @State var data = [
    
        Post(id: 0, name: "Nam", image: "image1", seen: false, loading: false, picShow: "image6"),
        Post(id: 1, name: "Hung", image: "image2", seen: false, loading: false, picShow: "image7"),
        Post(id: 2, name: "Ly", image: "image3", seen: false, loading: false, picShow: "image8"),
        Post(id: 3, name: "Phuong", image: "image4", seen: false, loading: false, picShow: "image9"),
        Post(id: 4, name: "Thanh", image: "image5", seen: false, loading: false, picShow: "image10"),
        
    ]
    
    var body: some View {
        
        ZStack (alignment: Alignment.top) {
            
            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
            
            ZStack {
                
                VStack {
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 22) {

                            Button(action: {


                            }) {
                                ZStack(alignment: .bottomTrailing){

                                    Image("image1").resizable().frame(width: 56, height: 56).clipShape(Circle())

                                    Image("image10").resizable().frame(width: 12, height: 12).clipShape(Circle()).offset(x: 6)
                                }
                            }
                            
                            ForEach(0..<self.data.count ){ i in

                                VStack (spacing: 8) {
                                    
                                    ZStack {
                                        
                                        Image(self.data[i].image)
                                                .resizable()
                                                .frame(width: 65, height: 65)
                                            .clipShape(Circle())
                                            .padding()
                                           
                                        if( !self.data[i].seen) {
                                            
                                            Circle()
                                                .trim(from: 0, to: 1)
                                                .stroke(
                                                    AngularGradient(
                                                        gradient: .init(colors: [.red, .orange, .red]),
                                                        center: .center),
                                                    style: StrokeStyle(lineWidth: 4, dash: [self.data[i].loading ? 7 : 0]))
                                                .frame(width: 75, height: 75)
                                                .rotationEffect(.init(degrees: self.data[i].loading ? 360 : 0))
                                        }
                                    }
                                    
                                    Text(self.data[i].name)
                                        .foregroundColor(.black)
                                        .lineLimit(1)
                                }
                                .frame(width: 75)
                                .onTapGesture {
                                    
                                    withAnimation(Animation.default.speed(0.4).repeatForever(autoreverses: false)) {
                                        
                                        self.data[i].loading.toggle()
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + (self.data[i].seen ? 0 : 1.2)) {
                                            
                                            self.current = self.data[i]
                                            self.show.toggle()
                                            self.data[i].loading = false
                                            self.data[i].seen = true
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    Spacer()
                }
                
                if (self.show) {
                    
                    ZStack (alignment: .topTrailing) {
                        
                        Color.black.edgesIgnoringSafeArea(.all)
                        
                        ShowStory(current: self.current)
                    }
                    .transition(.move(edge: .trailing))
                    .onTapGesture {
                        
                        withAnimation(.default) {
                            
                            self.show = false
                        }
                    }
                }
            }
        }
        .navigationBarTitle(self.show ?  "" : "Instagram", displayMode: .inline)
        .navigationBarHidden(self.show ? true : false)
    }
}

struct Post: Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var seen: Bool
    var loading: Bool
    var picShow: String
}

struct ShowStory: View {
    var current: Post!
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {
        
            GeometryReader {_ in
                
                VStack (alignment: .center) {
                    
                    Image(self.current.picShow)
                        .resizable()
                        
                }
            }
            
            VStack (spacing: 15) {
                
                HStack (spacing: 15) {
                    
                    Image(self.current.image)
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                    
                    Text(self.current.name)
                        .foregroundColor(.white)
                                            
                    Spacer()
                }
                .padding(.leading)
            }
            .padding(.top)
        }
    }
}
