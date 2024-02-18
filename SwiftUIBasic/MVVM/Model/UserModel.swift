//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import Foundation

struct UserModel: Identifiable {
    
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
