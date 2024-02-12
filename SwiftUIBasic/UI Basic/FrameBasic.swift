//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
//        ScrollView(showsIndicators: false) {
            VStack (spacing: 20) {
                
                // MARK: - Frame 1
                
//                Text("Hello, World!")
//                    .font(.title)
//                    .background(Color.green)
//                    .frame(width: 200, height: 200, alignment: .center)
//                    .background(Color.red)
                
                Divider()
                
                // MARK: - Frame 2
//                Text("Hello, World!")
//                    .font(.title)
//                    .background(Color.green)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                    .background(Color.red)
                
                // MARK: - Frame 3
                Text("Hello, World!")
                    .font(.title)
                    .background(Color.red)
                    .frame(height: 100, alignment: .top)
                    .background(Color.orange)
                    .frame(width: 200)
                    .background(Color.purple)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.pink)
                    .frame(height: 400)
                    .background(Color.green)
                    .frame(maxHeight: .infinity, alignment: .top)
                    .background(Color.yellow)
                
                
            }
            
        }
//    }
}

#Preview {
    FrameBasic()
}
