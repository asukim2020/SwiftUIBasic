//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct ButtonBasic: View {
    
    // MARK: - 변수 선언
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    
    var body: some View {
        VStack (spacing: 20) {
            
            // MARK: - 리셋 버튼
            Button(action: {
                self.mainTitle = "리셋"
            }, label: {
                Text("리셋 버튼")
            })
            
            Text(mainTitle)
                .font(.title)
                
            Divider()
            
            // MARK: - 기본 버튼
            Button(action: {
                self.mainTitle = "기본 버튼 눌림"
            }, label: {
                Text("기본 버튼")
            }).accentColor(.red)
            
            
            // MARK: - 일반적인 버튼
            Button(action: {
                self.mainTitle = "기본 버튼 눌림"
            }, label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            })
            
            Divider()
            
            // MARK: - 아이콘 버튼
            Button(action: {
                self.mainTitle = "하트 버튼 눌림"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            Divider()
            
            // MARK: - 캡슐 버튼
            Button(action: {
                self.mainTitle = "완료 버튼 눌림"
            }, label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.5)
                    )
            })
        }
    }
}

#Preview {
    ButtonBasic()
}
