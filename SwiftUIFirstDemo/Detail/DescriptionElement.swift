//
//  DescriptionElement.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct DescriptionElement : View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12.0) {
            Text("Описание курса")
                .font(.title)
                .fontWeight(.medium)
            Text("Язык программирования Swift является новым языком корпорации Apple, который призван заменить собой Objective-C, существующий с середины 80-х годов. В этом курсе вы узнаете все основные моменты языка, что позволит вам без проблем написать свой отлично работающий код. Язык Swift является новейшей разработкой Apple и имеет ряд преимуществ и отличий от языков семейства C, с которыми вы так же познакомитесь и будете работать в этом курсе.").lineLimit(nil)
            }
        
    }
}

#if DEBUG
struct DescriptionElement_Previews : PreviewProvider {
    static var previews: some View {
        DescriptionElement(user: userResponse[0])
    }
}
#endif
