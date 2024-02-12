//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack (spacing: 20) {
                
                // MARK: - Linear Gradient
                Text("Linear Gradient")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 300, height: 180)
                
                // MARK: - Radial Gradient
                Text("Radial Gradient")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [Color.yellow, Color.purple]),
                            center: .leading,
                            startRadius: 5,
                            endRadius: 300)
                    )
                    .frame(width: 300, height: 180)
                
                // MARK: - Angular Gradient
                Text("Angular Gradient")
                    .font(.title)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        AngularGradient(
                            gradient: Gradient(colors: [Color.blue, Color.green]),
                            center: .topLeading,
                            angle: .degrees(180))
                    )
                    .frame(width: 300, height: 180)
            }
        }
    }
}

#Preview {
    GradientBasic()
}
