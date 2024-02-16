//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    // MARK: - property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading, content: {
            
            Color.red.ignoresSafeArea()
            
            Button(action: {
                // MARK: - close present
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
            
        })
    }
}

#Preview {
    SheetBasic2()
}
