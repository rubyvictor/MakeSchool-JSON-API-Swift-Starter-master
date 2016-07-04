//
//  Movie.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Movie {
    let name: String
    let rightsOwner: String
    let price: Double
    let link: String
    let releaseDate: String
    
    init(json: JSON) {
        self.name = "Zootopia"
        self.rightsOwner = "iTunes Store"
        self.price = 19.99
        self.link = "https://itunes.apple.com/us/movie/zootopia/id1084138493?uo=2"
        self.releaseDate = "March 4, 2016"
    }
}
