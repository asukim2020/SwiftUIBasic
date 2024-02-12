//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack (spacing: 20) {
                
                // MARK: - 원형
                Text("원형")
                    .font(.title)
                
                Circle()
                // high priority color
                //                .fill(Color.blue)
                // low priority color
                //                .foregroundColor(.pink)
                //                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                    .trim(from: 0.2, to: 1.0)
                    .stroke(Color.purple, lineWidth: 50)
                    .frame(width: 200, height: 100, alignment: .center)
                    .padding(30)
                
                // MARK: - 타원형
                Text("타원형")
                    .font(.title)
                
                Ellipse()
                    .fill(Color.green)
                    .frame(width: 200, height: 100, alignment: .center)
                
                // MARK: - 캡슐형
                Text("캡슐형")
                    .font(.title)
                
                Capsule(style: .circular)
                    .stroke(Color.blue, lineWidth: 30)
                    .frame(width: 200, height: 100, alignment: .center)
                
                
            }
            
            VStack (spacing: 20) {
                // MARK: - 캡슐형
                Text("직사각형")
                    .font(.title)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100, alignment: .center)
                
                Text("둥근 직사각형")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 20)
                    .trim(from: 0.4, to: 1.0)
                    .frame(width: 200, height: 100, alignment: .center)
                
            }
        }
    }
}

#Preview {
    ShapeBasic()
}
