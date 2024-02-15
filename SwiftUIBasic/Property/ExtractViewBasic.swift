//
//  ExtactViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    
    @State var backgroundColor = Color.pink
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    // MARK: - Content
    var contentLayer: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    // MARK: - Click Button
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
