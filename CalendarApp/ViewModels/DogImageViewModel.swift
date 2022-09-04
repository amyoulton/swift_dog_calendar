//
//  DogImageViewModel.swift
//  CalendarApp
//
//  Created by Amy Oulton on 2022-09-03.
//

import Foundation

struct DogImageViewModel {
    
   func fetchDogImage() async throws  -> ImageInfo {
        guard let url = URL(string: "https://api.thedogapi.com/v1/images/search?api_key=live_mgwc4U8bgr0VNQSiqOigTICC7hZHtvkK95Xl7OqqqTCA8Y9XDf16EE06yvltRTh5") else { fatalError("Missing URL")}
                            
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching dog image data")}
        let picInfo = try JSONDecoder().decode([ImageInfo].self, from: data)
        let pictureInfo = picInfo[0]
        return pictureInfo
    }
    

    func getDogs() async throws -> [String] {
    var listOfDogs = [String]()
    
    for _ in 1...7 {
        let dogImage = try await fetchDogImage()
        listOfDogs.append(dogImage.url)
    }
   return listOfDogs
    }
}



struct ImageInfo: Decodable {
    var id: String
    var url: String
}
