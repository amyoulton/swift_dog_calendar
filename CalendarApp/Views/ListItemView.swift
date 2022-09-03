//
//  ListItemView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        Text("Day One")
            .padding(100)
            .frame(maxWidth: .infinity)
            .listRowSeparator(.hidden)
            .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 4)
                )
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
