//
//  ChatModel.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 5/2/26.
//

import Foundation

struct ChatModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
}
