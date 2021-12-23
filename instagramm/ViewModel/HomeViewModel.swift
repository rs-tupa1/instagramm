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
    
    
    func isSelectedStory(indexCurrent: Int) {
        withAnimation(Animation.default.speed(0.4).repeatForever(autoreverses: false)) {
            
            data[indexCurrent].loading.toggle()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + (data[indexCurrent].seen ? 0 : 1.2)) {
                
                self.current = self.data[indexCurrent]
                self.show.toggle()
                self.data[indexCurrent].loading = false
                self.data[indexCurrent].seen = true
            }
        }
    }
    
    func showStory() {
        show.toggle()
    }
}
