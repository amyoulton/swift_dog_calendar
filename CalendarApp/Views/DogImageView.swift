//
//  DogImageView.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import SwiftUI

struct DogImageView: View {
    var viewModel = DogImageViewModel()
    @State var dogImage: ImageInfo?

    var body: some View {
        if let dogImage = dogImage {
            AsyncImage(url: URL(string: dogImage.url))
    } else {
        ListItemView(str: "Loading")
            .task {
            print("trying")
            do {
                dogImage = try await viewModel.fetchDogImage()
                
            } catch {
                print("Error getting weather: \(error)")            }
        }
    }

    }
}

struct DogImageView_Previews: PreviewProvider {
    static var previews: some View {
        DogImageView()
    }
}
