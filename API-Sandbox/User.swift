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
        self.firstName = "rose"
        self.lastName = "moore"
        self.street = "3992 north street"
        self.city = "masterton"
        self.State = "wellington"
        self.zipCode = 67068
        self.country = "NZ"
        self.title = "mrs"
        self.emailAddress = "rose.moore@example.com"
        self.cellPhoneNumber = "(302)-922-2080"
        
        
    }
}
