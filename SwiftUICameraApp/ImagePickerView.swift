//
//  ImagePickerView.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/24.
//

import SwiftUI

/// 〜メモ書き〜
/// UIViewControllerRepresentable
/// SwiftUIでUIKitを使用できる
///
/// typealiasで使用するViewControllerを指定する
///
/// makeUIViewController
/// 使用するViewControllerを初期化
///
/// updateUIViewController
/// 使用するViewControllerを更新
///

struct ImagePickerView: UIViewControllerRepresentable {

    typealias UIViewControllerType = UIImagePickerController

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imageVC = UIImagePickerController()
//        imageVC.delegate = context.coordinator
        
        imageVC.sourceType = UIImagePickerController.SourceType.camera
        
        return imageVC
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
