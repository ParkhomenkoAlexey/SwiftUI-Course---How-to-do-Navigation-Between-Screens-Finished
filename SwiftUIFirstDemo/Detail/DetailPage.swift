//
//  DetailPage.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct DetailPage : View {
    
    var object: CoursesAndWebinarsResponse
    
    var body: some View {
        List {
//            TopElements(user: user)
//            DescriptionElement(user: user)
            TopElements(object: object)
            DescriptionElement(object: object)
        }.padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        
    }
}

#if DEBUG
struct DetailPage_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
//            DetailPage(user: userResponse[0])
            DetailPage(object: materialResponse[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
