//
//  SearchViewModel.swift
//  instagramm
//
//  Created by Anh Tú on 29/12/2564 BE.
//

import SwiftUI
import Combine
import Foundation

class SearchViewModel: ObservableObject {
    @Published var textSearch = ""
    @Published var isDelete = false
    
    private var cancellableset: Set<AnyCancellable> = []
    
    init() {
        $textSearch
            .map { text in
                if text.isEmpty {
                    return false
                }
                return true
            }
            .assign(to: \.isDelete, on: self)
            .store(in: &cancellableset)
    }
    
    func onClearText() -> Void {
        textSearch.removeAll()
    }
}
