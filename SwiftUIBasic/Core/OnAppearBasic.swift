//
//  OnAppearBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct OnAppearBasic: View {
    
    @State var noticeText: String = "onAppear 시작점"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                Text(noticeText)
                
                // 화면이 보이고 나서 load 가 되게끔 하는 LazyStack
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                        
                        // onAppear 새로 화면에 생길 때 마다 count 1씩 증가 시키기
                            .onAppear {
                                count += 1
                            }
                        
                    } // : LOOP
                } // : LAZYVSTACK
                
            } // : SCROLL
            .onAppear {
                // OnAppearBasic View 가 화면에 나타날 때 시작되는 로직 넣기
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작 완료 했습니다."
                }
            }
            .navigationTitle("생성된 박스: \(count)")
        } // : NAVIGATION
    }
}

#Preview {
    OnAppearBasic()
}
