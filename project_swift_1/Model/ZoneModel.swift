//
//  ZoneModel.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 9/2/26.
//

import SwiftUI

struct ZoneModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: String

    func image(forSize size: Int) -> Image {
            // Thử load ảnh từ Assets, nếu không có thì hiện icon mặc định của hệ thống
            if UIImage(named: imageName) != nil {
                return Image(imageName)
            } else {
                return Image(systemName: "person.circle") // Icon mặc định nếu thiếu ảnh
            }
        }
}
