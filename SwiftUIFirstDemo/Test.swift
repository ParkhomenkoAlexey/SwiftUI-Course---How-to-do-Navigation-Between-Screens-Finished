//
//  Test.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct Test : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("2")
                .resizable()
                .frame(width: 155, height: 155)
                Text(/*@START_MENU_TOKEN@*/"Placeholder Placeholder Placeholder"/*@END_MENU_TOKEN@*/)
            .layoutPriority(0.1)
            }
        
    }
}

#if DEBUG
struct Test_Previews : PreviewProvider {
    static var previews: some View {
        Test()
    }
}
#endif
