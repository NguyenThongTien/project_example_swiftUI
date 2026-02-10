//
//  SettingCell.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 9/2/26.
//

import SwiftUI

struct SettingCell: View {
    var image: String
    var title: String
    var isShowDivider: Bool = true
    var body: some View {
        VStack{
            HStack{
                Image(image)
                Text(title)
                Spacer()
            }.padding(.top, 5).frame(height: 44).padding(.horizontal, 15)
            if(isShowDivider){
                Color(red: 240.0/255.0, green: 243.0/255.0, blue: 245.0/255.0).frame(height: 1)
            }
        }.frame(height: 50)
    }
}

#Preview {
    SettingCell(
        image: "setting_quanzi", title: "Nguyễn Thông Tiến"
    )
}
