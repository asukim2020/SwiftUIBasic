//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
