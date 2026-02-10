//
//  SettingView.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 10/2/26.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                VStack() {
                    Color(red: 1.0, green: 228.0/255.0, blue: 20.0/255)
                        .frame(height: 150).edgesIgnoringSafeArea(.top)
                        .overlay(
                            alignment: .topTrailing
                        ){
                            HStack {
                                Spacer()
                                Image("setting_icon").frame(alignment: .center)
                                    .padding(.trailing, 20)
                            }
                        }
                }
                HStack{
                    CircleImage(image: "meIcon").padding(.leading, 15)
                    VStack(alignment: .leading){
                        Text("Nguyen Thong Tien")
                        HStack{
                            Image("touxiang")
                            Text("Tài khoản này là của tôi")
                            
                        }
                    }.padding(.horizontal, 16)
                    Spacer()
                }.frame(height: 100)
                    .background(Color.white
                        .cornerRadius(10))
                    .shadow(radius: 5)
                    .padding(.horizontal, 15)
            }
            Group{
                SettingCell(image: "setting_quanzi", title: "我的圈子")
                SettingCell(image: "setting_shoucang", title: "我的收藏")
                SettingCell(image: "setting_tongzhi", title: "我的通知")
                SettingCell(image: "setting_feedback", title: "帮助与反馈", isShowDivider: false)
                HStack{
                    Color(red: 240.0/255.0, green: 243.0/255.0, blue: 245.0/255)
                }
                    .frame(height: 6.0)
                SettingCell(image: "setting_tongzhi", title: "我的通知")
                SettingCell(image: "setting_feedback", title: "帮助与反馈")
                SettingCell(image: "setting_tongzhi", title: "我的通知")
                SettingCell(image: "setting_feedback", title: "帮助与反馈")
            }
        }.frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SettingView()
}
