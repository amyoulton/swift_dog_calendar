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
    let currentDateColor = Color(red: 0.979, green: 0.002, blue: 0.434)
    let otherDateColor = Color(red: 0.835, green: 0.741, blue: 0.689)

    var body: some View {
        
            if str == calendarView.getToday(currentDate: Date()) {
                DateOverlayView(string: str, color: currentDateColor )
            } else {
                DateOverlayView(string: str, color: otherDateColor )
            }
    }
}


struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(str: "1")
    }
}
