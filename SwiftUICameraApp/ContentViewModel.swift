//
//  ContentViewModel.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/22.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var url: String = "URL"
    @Published var key: String = "KEY"
    
    @Published var isShowCamera: Bool = false
    
    
    // カメラ起動ボタンタップイベント
    func btnCameraTapped() {
        isShowCamera = !isShowCamera        
    }
    
}
