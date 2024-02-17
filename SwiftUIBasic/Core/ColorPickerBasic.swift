//
//  ColorPickerBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    @State var backgroundColor = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("원하는 색을 고르세요")
            }
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        } // : ZStack
    }
}

#Preview {
    ColorPickerBasic()
}
