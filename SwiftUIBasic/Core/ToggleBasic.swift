//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct ToggleBasic: View {
    
    @State var toggleIsOn = false
    
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태")
                Text(toggleIsOn ? "온라인" : "오프라인")
            } // : HStack
            
            Toggle(
                isOn: $toggleIsOn,
                   label: {
                Text("로그인 상태 선택")
                   })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            .padding(.horizontal, 100)
            
            Spacer()
        } // : VStack
    }
}

#Preview {
    ToggleBasic()
}
