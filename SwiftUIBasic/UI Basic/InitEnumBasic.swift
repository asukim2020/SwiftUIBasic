//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // MARK: - 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // MARK: - enum
    enum Fruit {
        case apple
        case orange
    }
    
    // MARK: - init
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
            
        case .apple:
            self.title = "사과"
            self.backgroundColor = .red
        case .orange:
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
        
    }
    
    var body: some View {
        VStack (spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10.0)
    }
}

#Preview {
    HStack {
        // MARK: - View 생성
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}
