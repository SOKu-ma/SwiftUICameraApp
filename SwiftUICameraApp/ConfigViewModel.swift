//
//  ConfigViewModel.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/24.
//

import Foundation
import Combine

class ConfigViewModel: ObservableObject {
    
    @Published var isShowUrlConfig: Bool = false
    @Published var isShowDevice: Bool = false
    @Published var isShowUserTerm: Bool = false
    
    func btnUrlConfig() {
        isShowUrlConfig = true
    }
    
    func btnDevice() {
        isShowDevice = true
    }
    
    func btnUrlUserTerm() {
        isShowUserTerm = true
    }
    
}
