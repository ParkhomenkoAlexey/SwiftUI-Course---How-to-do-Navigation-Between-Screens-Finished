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
        List(userResponse) { object in
            Text(object.name)
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
