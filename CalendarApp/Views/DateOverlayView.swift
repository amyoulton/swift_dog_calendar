//
//  DateOverlayView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct DateOverlayView: View {
    let string: String
    var color: Color = Color.blue
  
    
    var body: some View {
        Text(string)
            .font(.system(size: 120))
            .foregroundColor(.white)
            .shadow(color: color  , radius: 4, x: 0, y: 2)
            .padding(30)
            .frame(width: 380, height: 200, alignment: .trailing)
            .listRowSeparator(.hidden)
        .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(color, lineWidth: 4)
            )
    }
}

struct DateOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        DateOverlayView(string: "Example")
    }
}
