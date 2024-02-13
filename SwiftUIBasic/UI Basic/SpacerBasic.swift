//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        
        // MARK: - App 상단 닫기 아이콘 만들기
        VStack {
            HStack (spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
        
        // MARK: - Spacer 도형
        HStack {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            
        }
        .background(.yellow)
        
    }
}

#Preview {
    SpacerBasic()
}
