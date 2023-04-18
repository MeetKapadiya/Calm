//
//  HomePageApi.swift
//  Calm
//
//  Created by Meet Kapadiya on 03/04/23.
//

import Foundation


struct API: Codable {
    var postCode: String
    var country: String
    var countryAbbreviation: String
    var places: [Place]

    enum CodingKeys: String, CodingKey {
        case postCode = "post code"
        case country
        case countryAbbreviation = "country abbreviation"
        case places
    }
}
