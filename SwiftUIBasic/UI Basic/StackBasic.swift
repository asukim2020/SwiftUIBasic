//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            // MARK: - VStack
            VStack (alignment: .leading, spacing: 20, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
            }).padding()
            
            Divider()
            
            // MARK: - HStack
            HStack (alignment: .center, spacing: 20, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
            }).padding()
            
            Divider()
            
            // MARK: - ZStack
            ZStack(alignment: .topLeading, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 130, height: 130)
                
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
            }).padding()
    
            Divider()
            
            // MARK: - All Stack
            ZStack(alignment: .top, content: {
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 350, height: 500)
                
                VStack(alignment: .leading, spacing: 30, content: {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(.green)
                        .frame(width: 100, height: 100)
                    
                    HStack(alignment: .bottom, content: {
                        Rectangle()
                            .fill(.purple)
                            .frame(width: 50, height: 50)
                        
                        Rectangle()
                            .fill(.pink)
                            .frame(width: 75, height: 75)
                        
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 25, height: 25)
                    }).background(.white)
                }).background(.black)
            })
        }.padding()
        
        Divider()
        
        // MARK: - ZStack vs Background
        VStack(spacing: 50) {
            // ZStack 을 사용해서 원에 1을 표현 - layer 가 복잡할 때 ZStack 사용해 보자
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Divider()
            
            // ZStack 을 사용해서 원에 1을 표현 - layer 가 단순할 때
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }.padding()
    }
}

#Preview {
    StackBasic()
}
