//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/12/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack (spacing: 20) {
                
                // MARK: - Icon
                Image(systemName: "person.fill.badge.plus")
                    .resizable()
                    .renderingMode(.original)
                    .scaledToFit()
                    .foregroundColor(Color.blue)
                    .frame(width: 300, height: 300)
                
            }
        }
    }
}

#Preview {
    IconBasic()
}
