//
//  CategoryRow.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    
    var categoryName: String
    var items: [UserResponse]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { user in
                        NavigationButton(destination: DetailPage(user: user)) {
                            CategoryItem(user: user)
                        }
                    }
                }
                }
                .frame(height: 185)
        }
    }
}




#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: userResponse[0].category.rawValue,
            items: Array(userResponse.prefix(4))
        )
    }
}
#endif
