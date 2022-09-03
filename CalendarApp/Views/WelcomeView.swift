//
//  WelcomeView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to App")
                .font(.title)
                .padding()
           
            Text("Your home for daily pet pictures!")
                .font(.body)
                .padding()
            Text("Before we can get started, you must answer the age old question:")
                .padding()
            Button("Dog 🐶"){
              print("chose dog")
                
            }
            .padding()
            Button("Cat 🐱"){
              print("chose dog")
            }
            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
