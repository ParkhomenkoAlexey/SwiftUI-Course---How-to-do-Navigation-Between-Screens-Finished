//
//  FriendsList.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct FriendsList : View {
    var body: some View {
        List(userResponse) { user in
            Cell(user: user)
        }
    }
}

#if DEBUG
struct FriendsList_Previews : PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
#endif
