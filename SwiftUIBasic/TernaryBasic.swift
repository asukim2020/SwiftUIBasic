//
//  TernaryBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct TernaryBasic: View {
    
    @State var isStaringState = false
    
    var body: some View {
        
        VStack {
            Button(action: {
                isStaringState.toggle()
            }, label: {
                Text("if else 버튼: \(isStaringState.description)")
            })
        }
        
        
        // MARK: - if else
        if isStaringState {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.red)
                .frame(width: 200, height: 100)
        } else {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: 200, height: 100)
        }
        
        // MARK: - 삼항 연산자
        
        Button {
            isStaringState.toggle()
        } label: {
            Text("삼항 연산자버튼: \(isStaringState.description)")
        }
        
        Text(isStaringState ? "빨강" : "파랑")
        
//        if isStaringState {
//            Text("빨강")
//        } else {
//            Text("파랑")
//        }
  
        RoundedRectangle(cornerRadius: isStaringState ? 25 : 0)
            .fill(isStaringState ? .red : .blue)
            .frame(
                width: isStaringState ? 200 : 50,
                height: isStaringState ? 400 : 100
            )
        
        Spacer()
    }
}

#Preview {
    TernaryBasic()
}
