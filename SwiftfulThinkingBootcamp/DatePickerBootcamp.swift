//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    
    var body: some View {
        
        VStack {
            
            Text("selected date is, ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //            DatePicker("Pick a datetime", selection: $selectedDate)
            
            //            DatePicker("Pick a date", selection: $selectedDate, displayedComponents: [
            //                .date, .hourAndMinute
            //            ])
            
            DatePicker("Pick a date", selection: $selectedDate, in: startingDate...endingingDate,
                       displayedComponents: [.date])
            .datePickerStyle(.automatic)
            
            
        }
        
    }
}

#Preview {
    DatePickerBootcamp()
}
