//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct SheetBasic: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            })
            
            // MARK: - sheet
            .sheet(isPresented: $showSheet, content: {
                SheetBasic2()
            })
            
            // MARK - fullScreenCover
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SheetBasic2()
//            })
        }
    }
}

#Preview {
    SheetBasic()
}
