//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    
    var body: some View {
        
        // MARK: - 1 번 화면
//        ZStack {
//            // MARK: - ignoresSafeArea bacground
//            Color.blue
//                .ignoresSafeArea()
////                .ignoresSafeArea(edges: .top)
//        }
        
        // MARK: - 2 번 화면
        ScrollView {
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
                
            }
        }
        .background(
            Color.blue.ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
