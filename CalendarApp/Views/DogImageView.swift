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
            AsyncImage(url: URL(string: dogImage.url)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 380, height: 200)
            .cornerRadius(30)
            .clipped()
            
    } else {
        ListItemView(str: "")
            .task {
            do {
                dogImage = try await viewModel.fetchDogImage()
                
            } catch {
                print("Error getting dog: \(error)")            }
        }
    }

    }
}

struct DogImageView_Previews: PreviewProvider {
    static var previews: some View {
        DogImageView()
    }
}
