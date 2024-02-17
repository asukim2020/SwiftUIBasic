//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/16/24.
//

import SwiftUI

struct ListBasic: View {
    
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "수박"
    ]
    
    @State var meats: [String] = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // : Section

                Section {
                    ForEach(meats, id: \.self) { meat in
                        Text(meat)
                    }
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }
            } // : List
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } // : NavigationView
    } // :Body
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button(action: {
            fruits.append("딸기")
        }, label: {
            Text("Add")
        })
    }
}

#Preview {
    ListBasic()
}
