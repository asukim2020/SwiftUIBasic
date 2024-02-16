//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct AnimationBasic1: View {
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(
                    .default
//                        .repeatCount(5)
//                        .repeatForever()
//                        .delay(1.0)
                ) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100: 300
                ).rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBasic1()
}
