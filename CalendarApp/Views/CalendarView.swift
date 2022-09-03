//
//  CalendarView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct CalendarView: View {
    var viewModel = CalendarViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.getMonth(currentDate: Date()))
                Text(viewModel.getYear(currentDate: Date()))
            }
            HStack {
                ForEach(0..<viewModel.getWeekList(currentDate: Date()).count, id: \.self) { index in
                   Text(viewModel.getWeekList(currentDate: Date())[index])
                }
            }
                
                VStack{
                    List {
                        ForEach(0...7, id: \.self) {
                            day in
                            ListItemView()
                        }
                    }.listStyle(SidebarListStyle())
                }
           
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

