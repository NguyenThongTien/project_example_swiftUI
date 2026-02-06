//
//  CircleImage.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 3/2/26.
//

import SwiftUI

struct CircleImage: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable() // 1. Cho phép thay đổi kích thước
                        .scaledToFill() // 2. Giúp ảnh không bị méo (giữ tỉ lệ)
                        .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 3)
    }
}

#Preview {
    CircleImage(image: "meIcon")
}
