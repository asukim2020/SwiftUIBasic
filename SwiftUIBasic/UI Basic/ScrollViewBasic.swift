//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/13/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        
        // MARK: - 세로 스크롤
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
//        }
        
        // MARK: - 가로 스크롤
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300, height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
//        }
        
        // MARK: - 가로, 세로 스크롤
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<10) { i in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { j in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .overlay(
                                        Text("\(i), \(j)")
                                    )
                                    .shadow(radius: 10)
                                    .padding()
    
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}
