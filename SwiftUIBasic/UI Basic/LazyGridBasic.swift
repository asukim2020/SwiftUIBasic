//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/15/24.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // MARK: - LazyVGrid 변수 선언
    let colums: [GridItem] = [
        // .flexible() -> 반응형 사이즈
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    // MARK: - LazyHGrid 변수 선언
    let title: [String] = Array(1...50).map {"목록 \($0)"}
    let layout: [GridItem] = [
        GridItem(.flexible(minimum: 80)),
        GridItem(.flexible(minimum: 80)),
    ]
    
    var body: some View {
        
        // MARK: - LazyVGrid
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: colums,
                alignment: .center, spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    
                    // MARK: - Section 1
                    Section(header: Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<12) { index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    }
                    
                    // MARK: - Section 2
//                    Section(header: Text("Section2")
//                        .foregroundStyle(.white)
//                        .font(.title)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(.blue)
//                        .padding()) {
//                            ForEach(0..<21) { index in
//                                Rectangle()
//                                    .fill(.green)
//                                    .frame(height: 150)
//                                    .overlay(
//                                        Text("\(index) 번")
//                                    )
//                            }
//                    }
                }
            
            // MARK: - LazyHGrid
            ScrollView(.horizontal) {
                LazyHGrid(rows: layout, spacing: 20) {
                    ForEach(title, id: \.self) { item in
                        VStack {
                            Capsule()
                                .fill(.yellow)
                                .frame(height: 30)
                            
                            Text(item)
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    LazyGridBasic()
}
