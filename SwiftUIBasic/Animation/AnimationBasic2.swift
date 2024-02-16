//
//  AnimationBasic2.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct AnimationBasic2: View {
    
    @State var isAnimated = false
    let timing: Double = 0.5
    
    
    var body: some View {
        
        VStack {
            Button(action: {
                isAnimated.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        
        // MARK: - linear animation
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimated ? 350 : 50, height: 100)
            .animation(.linear(duration: timing), value: isAnimated)
        
        
        // MARK: - easeIn animation
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimated ? 350 : 50, height: 100)
            .animation(.easeIn(duration: timing), value: isAnimated)
        
        
        // MARK: - easeOut animation
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimated ? 350 : 50, height: 100)
            .animation(.easeOut(duration: timing), value: isAnimated)
        
        
        // MARK: - easeInOut animation
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimated ? 350 : 50, height: 100)
            .animation(.easeInOut(duration: timing), value: isAnimated)
    }
}

#Preview {
    AnimationBasic2()
}
