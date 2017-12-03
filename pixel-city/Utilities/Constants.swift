//
//  Constants.swift
//  pixel-city
//
//  Created by Gutpinter Norbert on 2017. 12. 03..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import Foundation

let apiKey = "befd95e03dc2c8b0ec5705d2fcedb3a6"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DropablePin, andNumberOfPhotos number: Int) -> String{
    
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}


