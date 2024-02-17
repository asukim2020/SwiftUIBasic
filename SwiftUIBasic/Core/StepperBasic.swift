//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct StepperBasic: View {
    
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0.0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                differentWith(amount: 20)
            } onDecrement: {
                differentWith(amount: -20)
            }
            .padding()
        } // : VStack
    } // : Body
    
    func differentWith(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
