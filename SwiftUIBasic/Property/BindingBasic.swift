//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct BindingBasic: View {
    
    @State var backgroundColor = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
        
    }
}

#Preview {
    BindingBasic()
}
