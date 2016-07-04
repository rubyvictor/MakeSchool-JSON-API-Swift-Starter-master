//
//  User.swift
//  API-Sandbox
//
//  Created by Victor Lee on 3/7/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User {
    
    let firstName: String
    let lastName: String
    let street: String
    let city: String
    let State: String
    let zipCode: Float
    let country: String
    let title: String
    let emailAddress: String
    let cellPhoneNumber: String
    
    init(json: JSON) {
        self.firstName = json["name"]["first"].stringValue
        self.lastName = json["results"][0]["name"]["last"].stringValue
        self.street = json["results"][0]["location"]["street"].stringValue
        self.city = json["results"][0]["location"]["city"].stringValue
        self.State = json["results"][0]["location"]["state"].stringValue
        self.zipCode = json["results"][0]["location"]["postcode"].floatValue
        self.country = json["results"][0]["nat"].stringValue
        self.title = json["results"][0]["name"]["title"].stringValue
        self.emailAddress = json["results"][0]["email"].stringValue
        self.cellPhoneNumber = json["results"][0]["cell"].stringValue
        
        
    }
}
