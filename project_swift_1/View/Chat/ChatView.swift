//
//  ChatView.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 4/2/26.
//

import SwiftUI

struct ChatView: View {
    
    @StateObject private var viewModel = ChatViewModel()
    
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Spacer()
                    Text("Chat").bold()
                        .padding(.leading, 44)
                    Spacer()
                    Image(systemName: "heart")
                        .padding(.horizontal, 10)
                }
                Color(red: 240.0/255.0, green: 243.0/255.0, blue: 245.0/255.0)
                    .frame(height: 1)
            }
            
            Group(){
                ChatCell(chat: ChatModel(image: "meIcon", title: "Nguyen Thong Tien ", subTitle: "Bạn đang ở trạng thái hoạt động"))
                HStack {
                    Color(red: 240.0/255.0, green: 243.0/255.0, blue: 245.0/255.0)
                        .frame(height: 10)
                }
                ScrollView {
                            LazyVStack(spacing: 0) {
                                ForEach(viewModel.chats) { chat in
                                    ChatCell(chat: chat)
                                    Divider()
                                }
                            }
                        }
            }
        }.frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ChatView()
}
