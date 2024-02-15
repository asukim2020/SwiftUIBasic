//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

// MARK: - Component
struct ItemBasic: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack() {
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        
    }
}

#Preview {
    ItemBasic(title: "사과", count: 1, color: .red)
}
