//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct TransitionBasic: View {
    
    @State var showTransition = false
    @State var title = "title"
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button(action: {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                        title = showTransition.description
                    }
                }, label: {
                    Text(title)
                })
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                
                // MARK: - move transition
//                    .transition(.move(edge: .bottom))
                
                // MARK: - opacity transition
//                    .opacity(showTransition ? 1.0 : 0.0)
//                    .transition(.opacity)
                
                // MARK: - scale transition
//                    .transition(.scale)
                
                // MARK: - asymmetric(비대칭) transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
                
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
