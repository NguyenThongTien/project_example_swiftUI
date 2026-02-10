//
//  CatygoryRow.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 9/2/26.
//

import SwiftUI

struct CategoryRow: View {
    var items: [ZoneModel]
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack {
                    ForEach(items) { item in
                        CategoryItem(zone: item)
                    }
                }
        }
        
    }
}

struct CategoryItem : View {
    var zone : ZoneModel
    var body: some View {
        VStack{
            zone.image(forSize: 55).resizable().renderingMode(.original).cornerRadius(10).frame(width: 55, height: 55)
            Text(zone.name).frame(width: 65, height: 20)
        }.padding(.leading, 10)
    }
}

#Preview {
    CategoryRow(items: zonnData)
}
