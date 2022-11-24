//
//  ContentView.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm = ContentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    print("カメラ起動")
                    vm.btnCameraTapped()
                },label: {
                    Image(systemName: "camera")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    
                }).fullScreenCover(isPresented: $vm.isShowCamera) {
                    ImagePickerView()
                }
                Text(vm.url)
                    .padding()
                Text(vm.key)
            }
            .navigationBarTitle("Camera App", displayMode: .inline)
            .navigationBarItems(
                
                trailing: Menu {
                    
                    // カメラ起動
                    Button(action: {
                        print("カメラ起動")
                        vm.btnCameraTapped()
                        
                    },label: {
                        Image(systemName: "camera")
                        Text("領収書撮影")
                    })
                    .fullScreenCover(isPresented: $vm.isShowCamera) {
                        ImagePickerView()
                    }
                    
                    // 設定
                    VStack {
                        Button(action: {
                            print("設定画面に遷移")
                            vm.btnConfigTapped()
                        }, label: {
                            Image(systemName: "gearshape")
                            Text("設定")
                        })
                    }
                } label: {
                    Image(systemName: "ellipsis")
                }.background(
                    NavigationLink(destination: ConfigView(),
                                   isActive: $vm.isShowConfig,
                                   label: { EmptyView() })
                )
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
