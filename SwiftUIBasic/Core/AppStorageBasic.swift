//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State var generalName: String?
    
    @AppStorage("name") var appStrageName: String?
    
    var body: some View {
        VStack (spacing: 20) {
            VStack (spacing: 10) {
                Text("@State 로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    generalName = "Jacob"
                }, label: {
                    Text("이름 불러오기")
                })
            } // : VSTACK
            .padding()
            .border(.green)
            
            VStack (spacing: 10) {
                Text("@AppStorage 로 저장")
                    .font(.headline)
                
                Text(appStrageName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    appStrageName = "Jacob"
                }, label: {
                    Text("이름 불러오기")
                })
            } // : VSTACK
            .padding()
            .border(.red)
        } // : VSTACK
    }
}

#Preview {
    AppStorageBasic()
}
