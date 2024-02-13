//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 20) {
            
            Text("Hello, World!")
                .background(.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 20) // padding
                .background(.blue)
                .padding(.bottom, 20) // margin
            
            
            Divider()
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. ")
            
            
        }
        // VStack 범위 밖에서 pading 설정
        .padding()
        .padding(.vertical, 30) // top, bottom padding
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
