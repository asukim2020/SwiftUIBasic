//
//  OnTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack (spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
                
            // MARK: - 일반적인 Button
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            })
            
            // MARK: - onTabGesture 한번 클릭 시 실행
            Text("2. onTabGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // MARK: - onTabGesture 두번 클릭 시 실행
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
            
        } // : VSTACK
        .padding(40)
        
    }
}

#Preview {
    OnTabGestureBasic()
}
