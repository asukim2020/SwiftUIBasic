//
//  SliderBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct SliderBasic: View {
    
    @State var slidervalie: Double = 3
    @State var color = Color.blue
    
    var body: some View {
        VStack {
            HStack {
                Text("라벨:")
//                Text("\(slidervalie)")
                Text(String(format: "%.2f", slidervalie))
            } // : HStack
            .foregroundColor(color)
            Slider(value: $slidervalie,
                   in: 1...5, 
                   step: 0.1, onEditingChanged: { _ in
                color = .red
            }, minimumValueLabel: Text("1")
            , maximumValueLabel: Text("5"),
            label: {
                Text("라벨")
            })
            .accentColor(.red)
            .padding()
        } // : VStack
    }
}

#Preview {
    SliderBasic()
}
