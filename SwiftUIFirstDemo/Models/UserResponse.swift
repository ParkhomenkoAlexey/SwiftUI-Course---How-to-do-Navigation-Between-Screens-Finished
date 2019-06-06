//
//  UserResponse.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 05.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}

protocol CourseRepresenatable {
    var name: String { get }
    var image: String { get }
    var shortName: String { get }
    var category: Category { get }
    var description: String { get }
    var rating: Double { get }
    var students: Int { get }
    var lessons: Int { get }
    var isFavorite: Bool  { get }
    var isFeatured: Bool  { get }
}

enum Category: String, CaseIterable, Codable, Hashable {
    case featured = "Featured"
    case courses = "Courses"
    case webinars = "Webinars"
}

struct CoursesAndWebinarsResponse: Hashable, Codable, Identifiable, CourseRepresenatable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var students: Int
    var lessons: Int
    var isFavorite: Bool
    var isFeatured: Bool
}
