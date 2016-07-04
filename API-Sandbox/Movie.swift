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
    let poster: String
    
    init(json: JSON) {
        
        self.name = json["im:name"]["label"].stringValue
        self.rightsOwner = json["rights"]["label"].stringValue
        self.price = json["im:price"]["amount"].doubleValue
        self.link = json["link"]["href"].stringValue
        self.releaseDate = json["im:releaseDate"]["label"].stringValue
        self.poster = json["feed"]["entry"]["im:image"][2]["label"].stringValue
    }
}
