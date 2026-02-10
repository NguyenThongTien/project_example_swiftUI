//
//  ChatViewModel.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 5/2/26.
//


import Foundation

final class ChatViewModel: ObservableObject {

    // STATE (giống Bloc State)
    @Published var chats: [ChatModel] = []

    init() {
        loadChats()
    }

    // EVENT (giống Bloc Event)
    func loadChats() {
        chats = [
            ChatModel(
                image: "meIcon",
                title: "Nguyen Thong Tien",
                subTitle: "Bạn đang ở trạng thái hoạt động"
            ),
            ChatModel(
                image: "meIcon",
                title: "Nguyen Văn A",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            ),
            ChatModel(
                image: "meIcon",
                title: "Nguyen Thị B",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            ),
            ChatModel(
                image: "meIcon",
                title: "Hoàng Văn C",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            ),
            ChatModel(
                image: "meIcon",
                title: "Hoàng Văn D",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            ),
            ChatModel(
                image: "meIcon",
                title: "Hoàng Văn C",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            ),
            ChatModel(
                image: "meIcon",
                title: "Hoàng Văn D",
                subTitle: "Bạn ơi, bạn khoẻ không?"
            )
        ]
    }
}
