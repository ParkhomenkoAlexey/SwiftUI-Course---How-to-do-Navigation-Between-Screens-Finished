//
//  DescriptionElement.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct DescriptionElement : View {
    
    var object: CoursesAndWebinarsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12.0) {
            Text("Описание курса")
                .font(.title)
                .fontWeight(.medium)
            Text(object.description).lineLimit(nil)
            }
        
    }
}

#if DEBUG
struct DescriptionElement_Previews : PreviewProvider {
    static var previews: some View {
//        DescriptionElement(user: userResponse[0])
        DescriptionElement(object: materialResponse[0])
    }
}
#endif
