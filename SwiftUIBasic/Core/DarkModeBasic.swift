//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct DarkModeBasic: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack (spacing: 20) {
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    Text("Asset 에서 Adaptive Color 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("@Environment 사용해서 Adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                    
                } // : VStack
                
            } // : ScrollView
            
        } // : NavigationView
        
    }
}

#Preview {
    DarkModeBasic()
}
