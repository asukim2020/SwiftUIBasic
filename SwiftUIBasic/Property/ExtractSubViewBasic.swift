//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            // MARK: - Component
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
