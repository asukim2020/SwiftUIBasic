//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            
            // MARK: - Background
            Text("Hello, World")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            
            Divider()
            
            // MARK: - Overlay
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(Color.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                )
            
            Divider()
            
            // MARK: - Background and Overlay
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 250, height: 250)
                )
                .padding()
            
            Divider()
            
            // MARK: - Icon
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                        Text("2")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                )
                                .shadow(color: .red, radius: 10, x: 0, y: 5)
                            , alignment: .bottomTrailing
                        )
                ).padding()
            
            
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
