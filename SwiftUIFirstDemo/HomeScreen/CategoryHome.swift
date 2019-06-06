//
//  CategoryHome.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 05.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [UserResponse]] {
        .init(
            grouping: userResponse,
            by: { $0.category.rawValue }
        )
    }
    
    let swiftbook: UserResponse = UserResponse(id: 8,
        name: "Swiftbook.ru",
        profileImage: "swiftbook",
        email: "info@swiftbook.ru",
        likes: "54.2K",
        text: "Обучение созданию приложений на Swift для всех! Самое крупное и дружное сообщество по разработке под iOS :)",
        category: .featured,
        imageName: "stmarylake")
        
    var body: some View {
        NavigationView {
            
            List {
                Cell(user: swiftbook)
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted().identified(by: \.self)) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                        }
                    .listRowInsets(EdgeInsets())
                
                NavigationButton(destination: FriendsList()) {
                    Text("Наши преподаватели")
                    }
                }
                .navigationBarTitle(Text("Homepage"))
                .navigationBarItems(trailing:
                    PresentationButton(
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                            .accessibility(label: Text("User Profile"))
                            .padding(),
                        destination: Text("User Profile")
                )
            )
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
