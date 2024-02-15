//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var showCircle: Bool = false
    @State var showRectagle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack (spacing: 20) {
            
            // MARK: - Loading 버튼
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("로드중... -> \(isLoading.description)")
            })
            
            if isLoading {
                ProgressView()
            }
            
            // MARK: - 원형 버튼
            Button(action: {
                showCircle.toggle()
            }, label: {
                Text("원형 버튼... -> \(isLoading.description)")
            })
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            // MARK: - 사각형 버튼
            Button(action: {
                showRectagle.toggle()
            }, label: {
                Text("사각형 버튼... -> \(isLoading.description)")
            })
            
            if showRectagle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            // MARK: - 다른 조건
            if !showCircle && !showRectagle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            if showCircle || showRectagle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBasic()
}
