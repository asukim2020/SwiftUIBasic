//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct BindingChild: View {
    
    @State var buttonColor = Color.blue
    
    // MARK: - superview @State 변수 명과 일치해야 된다.
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        }, label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingChild(backgroundColor: .constant(.orange), title: .constant("Binding Child"))
        .previewLayout(.sizeThatFits)
}
