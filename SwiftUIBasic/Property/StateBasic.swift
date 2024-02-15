//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct StateBasic: View {
    
    // MARK: - 변수 선언
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("카운트: \(count)")
                
                HStack (spacing: 20) {
                    Button(action: {
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        self.count += 1
                    }, label: {
                        Text("1번 버튼")
                    })
                    
                    Button(action: {
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        self.count -= 1
                    }, label: {
                        Text("2번 버튼")
                    })
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
