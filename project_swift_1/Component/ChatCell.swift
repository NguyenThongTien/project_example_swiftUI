//
//  chatCell.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 3/2/26.
//

import SwiftUI

struct ChatCell: View {
    let chat: ChatModel
    var body: some View {
        HStack(alignment: .center,spacing: 15){
            CircleImage(image: chat.image)
            VStack(alignment: .leading){
                Text(chat.title)
                .bold()
                .padding(.top, 4)
                Text(chat.subTitle)
                .foregroundColor(Color.gray)
                .padding(.bottom, 8)
            }
            Spacer()
        }.frame(height: 60).padding(.horizontal, 15)
    }
}

#Preview {
    ChatCell(
        chat: ChatModel(
            image: "meIcon",
            title: "Nguyễn Văn A",
            subTitle: "Xin chào, bạn khoẻ không?"
        )
    )
}
