//
//  AnimationBasic3.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct AnimationBasic3: View {
    
    @State var isAnimated = false
    let timing: Double = 0.5
    
    var body: some View {
        
        VStack {
            Button(action: {
                withAnimation(.spring(
                    response: 0.5, // animation time
                    dampingFraction: 0.5, // spring strength
                    blendDuration: 0) // 다른 애니매이션 간의 길이 제어 - 자주 사용하지 않는다.
                ) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
        
    }
}

#Preview {
    AnimationBasic3()
}
