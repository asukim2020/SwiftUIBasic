//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel 을 초기화 할때는 @StateObject 로 불러오기
    @StateObject var viewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOsDeviceArray) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    } // : LINK
                } // : LOOP
            } // : LIST
        } // :  NAVIGATION
        // Navigation 하위 뷰에 ViewModel 을 enviromentObject 를 넘겨줌
        .environmentObject(viewModel)
    } // : BODY
}

#Preview {
    IOSDeviceView1()
}
