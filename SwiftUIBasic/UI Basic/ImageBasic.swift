//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            
            // MARK: - Image
            Image("nature")
                .resizable()
//                .scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
            Divider()
            
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ImageBasic()
}
