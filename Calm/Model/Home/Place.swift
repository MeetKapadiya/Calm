//
//  Place.swift
//  Calm
//
//  Created by Meet Kapadiya on 03/04/23.
//

import Foundation



struct Place: Codable {
    let placeName, longitude, state, stateAbbreviation: String
    let latitude: String

    enum CodingKeys: String, CodingKey {
        case placeName = "place name"
        case longitude, state
        case stateAbbreviation = "state abbreviation"
        case latitude
    }
}
