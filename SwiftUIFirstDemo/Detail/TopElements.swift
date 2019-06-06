//
//  TopElements.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct TopElements : View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 0) {
                Image("course")
                    .resizable()
                    .frame(width: 120, height: 120)
                Text("Курс: Гид по языку программирования Swift")
                    .font(.title)
                    .lineLimit(nil)
                .padding(EdgeInsets.init(top: 0, leading: 8, bottom: 0, trailing: 0))
                
            }
            LineStack()
        }
    }
}

struct LineStack: View {
    var body: some View {
        HStack(spacing: 12) {
            
            HStack {
                VStack {
                    Text("41")
                        .font(.headline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Text("Урок")
                        .font(.body)
                        .fontWeight(.regular)
                        .color(.gray)
                }
                VStack {
                    Text("9.7")
                        .font(.headline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Text("Рейтинг")
                        .font(.body)
                        .fontWeight(.regular)
                        .color(.gray)
                }
            }
            HStack {
                VStack {
                    Text("1808")
                        .font(.headline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Text("Участников")
                        .font(.body)
                        .fontWeight(.regular)
                        .color(.gray)
                }
                VStack {
                    Text("345")
                        .font(.headline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Text("Оценки")
                        .font(.body)
                        .fontWeight(.regular)
                        .color(.gray)
                }
            }
            
            
        }
        
        
    }
}

#if DEBUG
struct TopElements_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            TopElements(user: userResponse[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
