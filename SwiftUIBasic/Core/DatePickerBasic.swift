//
//  DatePickerBasic.swift
//  SwiftUIBasic
//
//  Created by 김현구 on 2/17/24.
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var selectedDate1 = Date()
    @State var selectedDate2 = Date()
    @State var selectedDate3 = Date()
    @State var selectedDate4 = Date()
    @State var selectedDate5 = Date()
    
    var currentDate: String {
        let date = Date()
        return dateToKR(selectedDate: date)
    }
    
    var dateFomatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            
            VStack (spacing: 20) {
                Text("현재시간: \(currentDate)")
            } // : VStack
            
            Divider()
            
            VStack {
                DatePicker("기본", selection: $selectedDate1)
                    .accentColor(.red)
                    .datePickerStyle(.compact)
                    .padding(.horizontal)
                
                Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate1))")
            } // : VStack
            
            Divider()
            
            VStack {
                DatePicker("달력", selection: $selectedDate2)
                    .accentColor(.red)
                    .datePickerStyle(.graphical)
                    .padding(.horizontal)
                
                Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate2))")
            } // : VStack
            
            Divider()
            
            VStack {
                DatePicker("월", selection: $selectedDate3)
                    .accentColor(.red)
                    .datePickerStyle(.wheel)
                    .padding(.horizontal)
                
                Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate3))")
            } // : VStack
            
            Divider()
            
            VStack {
                DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.date])
                    .accentColor(.red)
                
                Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate4))")
            } // : VStack
            
            Divider()
            
            VStack {
                DatePicker("시간만 선택", selection: $selectedDate5, displayedComponents: [.hourAndMinute])
                    .accentColor(.red)
                
                Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate5))")
            } // : VStack
            
        } // : ScrollView
        .padding()
        
    } // : Body
    
    func dateToKR(selectedDate: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr")
//        formatter.timeZone = TimeZone(abbreviation: "KST")
        
//        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분 ss초"
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: selectedDate)
    }
}

#Preview {
    DatePickerBasic()
}
