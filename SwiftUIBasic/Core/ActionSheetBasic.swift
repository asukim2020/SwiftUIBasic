//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    @State var showActionSheet = false
    @State var resultActionSheet = ""
    
    var body: some View {
        
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob Ko")
                
                Spacer()
                
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            } // : HStack
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        } // : VStack
        .actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
        })
        
    } // : Body
    
    func getActionSheet() -> ActionSheet {
        let sharebutton: ActionSheet.Button = .default(Text("공유하기")) {
            resultActionSheet = "공유 되었습니다."
        }
        
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")) {
            resultActionSheet = "삭제 되었습니다."
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [sharebutton, reportButton, deleteButton, cancelButton]
        )
    }
}

#Preview {
    ActionSheetBasic()
}
