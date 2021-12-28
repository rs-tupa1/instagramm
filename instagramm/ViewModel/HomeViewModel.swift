//
//  HomeViewModel.swift
//  instagramm
//
//  Created by Anh Tú on 23/12/2564 BE.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var show = false
    @Published var current = DataSimple.data[0]
    @Published var data = DataSimple.data
    
    
    func isSelectedStory(id: Int) {
        withAnimation(Animation.default.speed(0.4).repeatForever(autoreverses: false)) {
            
            data[id].loading.toggle()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + (data[id].seen ? 0 : 1.2)) {
                
                self.current = self.data[id]
                self.show.toggle()
                self.data[id].loading = false
                self.data[id].seen = true
            }
        }
    }
    
    func showStory() {
        show.toggle()
    }
}
