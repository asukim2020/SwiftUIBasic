//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            
            // MARK: - VStack
            VStack {
                NavigationLink {
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
            
            // MARK: - Navigation Title
            .navigationTitle("페이지 제목")
            
            // 상단 페에지 제목 스타일
            // automatic, inline, large
            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            
            // 상단 좌우에 icon, text, button 을 사용해서 나타낼 수 있음
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
            
            // MARK: - Sheet
            .sheet(isPresented: $showSheet, content: {
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지 입니다.")
                    .font(.largeTitle)
            })
        }
    }
    
}

#Preview {
    NavigationBasic()
}
