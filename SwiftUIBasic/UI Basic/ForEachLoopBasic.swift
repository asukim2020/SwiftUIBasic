//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    // MARK: - 변수 선언
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("index: \(index)")
                }
            }
            
            Divider()
            
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
