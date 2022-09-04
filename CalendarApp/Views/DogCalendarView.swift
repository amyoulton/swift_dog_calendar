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
                    .font(.system(size: 30))
                Text(viewModel.getYear(currentDate: Date()))
                    .font(.system(size: 30))
            }.padding(.bottom, 5)
            HStack {
                ForEach(0..<viewModel.getWeekList(currentDate: Date()).count, id: \.self) { index in
                    if viewModel.weekList[index] == viewModel.getToday(currentDate: Date()){
                        Text(viewModel.weekList[index])
                            .foregroundColor(Color(red: 0.979, green: 0.002, blue: 0.434))
                            .font(.system(size: 20))
                            .underline()
                    } else {
                        Text(viewModel.weekList[index])
                            .font(.system(size: 20))
                    }
                }
            }
                ScrollView() {
                    ForEach(0...6, id: \.self) {
                        day in
                        ZStack {
                            DogImageView()
                            ListItemView(str: viewModel.weekList[day])
                        }
                    }.padding()
                }
                .frame(maxWidth: 400)
            }
    }
}


struct DogCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        DogCalendarView()
    }
}

