//
//  ConfigView.swift
//  SwiftUICameraApp
//
//  Created by Shuhei Ota on 2022/11/24.
//

import SwiftUI

struct ConfigView: View {
    
    @ObservedObject var vm = ConfigViewModel()
    
    var body: some View {
        
        NavigationView {
            
            //        let bounds = UIScreen.main.bounds
            //        let width = Int(bounds.width)
            //        let height = Int(bounds.height)
            
            VStack {
                HStack {
                    Image(systemName: "gearshape")
                    Text("オプションメニュー").font(.title2)
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                
                Button(action: {
                }, label: {
                    HStack {
                        Image(systemName: "powerplug.fill")
                        Text("接続設定")
                    }
                })
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .buttonStyle(ConfigButtonLayout(color: .blue))
                
                Button(action: {
                }, label: {
                    HStack {
                        Image(systemName: "iphone")
                        Text("端末情報")
                    }
                })
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .buttonStyle(ConfigButtonLayout(color: .blue))
                
                Button(action: {
                }, label: {
                    HStack {
                        Image(systemName: "doc.text.fill")
                        Text("利用規約")
                    }
                })
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .buttonStyle(ConfigButtonLayout(color: .blue))
                
                Spacer()
                
                Divider()
                
                Text("XXX Co.,Ltd.")
                
                Spacer()
                
            }
            .navigationBarTitle("設定", displayMode: .inline)
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// ボタンレイアウト
struct ConfigButtonLayout: ButtonStyle {
    let color: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 200)
            .padding()
            .font(.title3)
            .background(color)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
