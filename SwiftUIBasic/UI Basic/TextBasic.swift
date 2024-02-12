//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font size -> title, body, footnote ... etc -> responsive
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title) // font size
                .bold() // .fontWeight(.bold)
                .underline(true, color: .red) // 밑줄
                .italic() // 기울기 체
                .strikethrough() // 중간선
                
            // 절대적 point font size
            Text("Hello World2!".uppercased())
                .font(.system(size: 25, weight: .bold, design: .serif)) // design default rounded
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
        }
    }
}

#Preview {
    TextBasic()
}
