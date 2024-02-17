//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State var inputText = ""
    @State var userNameData: [String] = []
    
    
    var body: some View {
        
        
        NavigationView {
            
            VStack (spacing: 20) {
                
                // MARK: - TestField - 한줄 텍스트 입력
//                TextField("최소 2글자 이상 입력: ", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // MARK: - TextEditor - 여러줄 텍스트 입력
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                
                Button(action: {
                    if isTextEnough() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }).disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            } // : VStack
            .padding()
            .navigationTitle("당신의 이름은?")
            
        } // : Navigation
    } // : Body
    
    func isTextEnough() -> Bool {
        return inputText.count >= 2
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
