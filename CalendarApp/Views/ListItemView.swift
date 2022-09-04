//
//  ListItemView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct ListItemView: View {
    var calendarView = DogCalendarViewModel()
    var dogView = DogImageViewModel()
    let str: String

    var body: some View {
        if str == calendarView.getToday(currentDate: Date()) {
            Text(str)
                .padding(100)
                .frame(maxWidth: .infinity)
                .listRowSeparator(.hidden)
            .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.green, lineWidth: 4)
            )
        } else {
            Text(str)
                .padding(100)
                .frame(maxWidth: .infinity)
                .listRowSeparator(.hidden)
            .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 4)
                )
        }
        
    }
    
}


struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(str: "Day One")
    }
}
