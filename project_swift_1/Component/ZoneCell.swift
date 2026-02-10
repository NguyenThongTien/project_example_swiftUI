//
//  ZoneCell.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 9/2/26.
//

import SwiftUI

struct ZoneCell: View {
    var image: String
    var title: String
    var body: some View {
        VStack{
            Image(image).resizable().scaledToFit().frame(width: 50)
            Text(title)
            .font(Font.system(size: 10))
            .foregroundColor(Color.gray)
            .frame(alignment: .center)
        }
    }
}

#Preview {
    ZoneCell(image: "meIcon", title: "Nguyễn Thông Tiến")
}
