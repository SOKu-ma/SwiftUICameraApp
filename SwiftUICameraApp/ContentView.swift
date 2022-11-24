//
//  ContentView.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm = ContentViewModel()
    
    @State var navigateTo: AnyView?
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    
                },label: {
                    Image(systemName: "camera")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    
                }).sheet(isPresented: $vm.isShowCamera) {
                    ImagePickerView()
                }
                Text(vm.url)
                    .padding()
                Text(vm.key)
            }
            .navigationTitle("Camera App")
            .navigationBarItems(
                
                trailing: Menu {
                    Button(action: {
                        // カメラ起動
                        showCamera()
                        
                    },label: {
                        Image(systemName: "camera")
                        Text("領収書撮影")
                    }).sheet(isPresented: $vm.isShowCamera) {
                        ImagePickerView()
                    }
                } label: {
                    Image(systemName: "ellipsis")
                }
            )
        }
    }
    
    func showCamera() {
        print("カメラ起動")
        vm.btnCameraTapped()
        navigateTo = AnyView(ImagePickerView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
