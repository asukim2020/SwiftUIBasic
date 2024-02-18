//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/18/24.
//

import Foundation

class FruitViewModel: ObservableObject {
    
    // published wrapper는 @State 와 비슷하게 상태값을 선언하는데, calss 안에서는 @Published 를 사용한다는 점이 다름니다.
    // @Published 는 Fruit 배열의 값이 View 에서 변경이 되면 FruitViewModel 에서 새로운 변경사항을 알아차려서 변경 한다는 점입니다.
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading = false
    
    init() {
        getFruit()
    }
    
    func getFruit() {
        
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
