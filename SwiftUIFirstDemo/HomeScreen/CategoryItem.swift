//
//  CategoryItem.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct CategoryItem : View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(user.imageName)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(5)
                .frame(width: 155, height: 155)
            Text("jere")
                .color(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#if DEBUG
struct CategoryItem_Previews : PreviewProvider {
    static var previews: some View {
        CategoryItem(user: userResponse[0])
    }
}
#endif
