//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
//                .navigationTitle("2번째 페이지")
//                .navigationBarHidden(true)
            
            VStack (spacing: 20) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                })
                
                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다.")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}

#Preview {
    SecondNavigationView()
}
