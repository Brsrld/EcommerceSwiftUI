//
//  CategoryModel.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 19.08.2021.
//

import Foundation

struct Category: Codable,Identifiable {
    let id: Int
    let name: String
    let image: String
}
