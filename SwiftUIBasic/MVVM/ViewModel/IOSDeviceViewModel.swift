//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    @Published var iOsDeviceArray: [IOSDeviceModel] = []
    
    init() {
        getDate()
    }
    
    func getDate() {
        let iPhone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        self.iOsDeviceArray.append(iPhone)
        self.iOsDeviceArray.append(iPad)
        self.iOsDeviceArray.append(iMac)
        self.iOsDeviceArray.append(appleWatch)
    }
}
