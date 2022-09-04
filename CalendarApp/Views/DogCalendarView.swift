//
//  CalendarView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct DogCalendarView: View {
    var viewModel = DogCalendarViewModel()
    var dogView = DogImageViewModel()
    
    
    var body: some View {

        VStack {
            HStack {
                Text(viewModel.getMonth(currentDate: Date()))
                Text(viewModel.getYear(currentDate: Date()))
            }
            HStack {
                ForEach(0..<viewModel.getWeekList(currentDate: Date()).count, id: \.self) { index in
                    if viewModel.weekList[index] == viewModel.getToday(currentDate: Date()){
                        Text(viewModel.weekList[index])
                            .foregroundColor(.red)
                    } else {
                        Text(viewModel.weekList[index])
                    }
                    
                }
            }
                
                VStack{
                    List {
                        ForEach(0...6, id: \.self) {
                            day in
                            ListItemView(str: viewModel.weekList[day])
                        }
                    }.listStyle(SidebarListStyle())

                }
           
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        DogCalendarView()
    }
}

