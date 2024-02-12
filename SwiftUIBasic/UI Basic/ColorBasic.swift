//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack (spacing: 20) {
                
                // MARK: - Basic Color
                Text("Basic Color")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.purple)
                    .frame(width: 300, height: 100, alignment: .center)
                
                // MARK: - Primary Color
                // 자동으로 다크모드 지원 ?
                Text("Primary Color")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.primary)
                //                .fill(Color.secondary)
                    .frame(width: 300, height: 100, alignment: .center)
                
                // MARK: - UIColor Color
                
                Text("UI Color")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color(UIColor.lightGray))
                    .frame(width: 300, height: 100, alignment: .center)
                
                // MARK: - Custom Color
                Text("Custom Color")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color("CustomColor"))
                    .frame(width: 300, height: 100, alignment: .center)
            }
        }
        
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
