//
//  CalendarViewModel.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import Foundation

class CalendarViewModel: ObservableObject {
    let date = Date()
    let calendar = Calendar.current
    var components: DateComponents {
        calendar.dateComponents([.day, .weekday], from: date)
    }
    
    func getMonth(currentDate: Date) -> String  {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: currentDate)
    }
    
   func getYear(currentDate: Date) -> String  {
       let dateFormatter = DateFormatter()
       dateFormatter.dateFormat = "YYYY"
       return dateFormatter.string(from: currentDate)
    }
    
    func getFirstDayOfWeek(myDate: Date) -> Date {
        var week = calendar.dateComponents([.weekOfYear, .yearForWeekOfYear], from: myDate)
        week.weekday = 1 // Monday
        let firstDayInWeek = calendar.date(from: week)!
        return firstDayInWeek
    }
    
    func getWeekList(currentDate: Date) -> [String] {
        var weekList = [String]()
        var week = calendar.dateComponents([.weekOfYear, .yearForWeekOfYear], from: currentDate)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        for day in 1...7 { // note: force unwrap is not ideal, learn a better way to do this
            week.weekday = day
            let today = calendar.date(from: week)!
            weekList.append(dateFormatter.string(from: today))
        }
        return weekList
    }
}
