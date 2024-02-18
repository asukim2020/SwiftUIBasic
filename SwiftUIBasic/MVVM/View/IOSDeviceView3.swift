//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // @StateObject 에서 선언한 viewModel 을 @EnviromentObejct 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(viewModel.iOsDeviceArray) { item in
                        Text(item.name)
                    } // : LOOP
                } // : VSTACK
                .foregroundColor(.white)
                .font(.largeTitle)
            } // : SCROLL
        } // : ZSTACK
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
