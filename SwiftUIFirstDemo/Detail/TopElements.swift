//
//  TopElements.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 06.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct TopElements : View {
    
    var object: CoursesAndWebinarsResponse
    
    var body: some View {

        VStack(spacing: 16.0) {
            VStack(spacing: 20.0) {
                MainImage(object: object)
                Text(object.name)
                    .lineLimit(nil)
                    .font(.title)
                }
           
                LittleStack(object: object)
                
            VStack(alignment: .leading, spacing: 12) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
                .lineLimit(nil)
            }
            
            Spacer()
        }.padding()
        
    }
}

struct LittleStack : View {
    var object: CoursesAndWebinarsResponse
    
    var body: some View {
        HStack(spacing: 30.0) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}

struct MainImage : View {
    var object: CoursesAndWebinarsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .frame(width: 170, height: 170)
                .cornerRadius(30)
                .border(Color.gray, width: 3, cornerRadius: 30)
                .shadow(radius: 10)
        }
        
    }
}



#if DEBUG
struct TopElements_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"].identified(by: \.self)) { deviceName in
            TopElements(object: materialResponse[2])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
