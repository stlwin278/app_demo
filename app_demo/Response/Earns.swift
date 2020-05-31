//
//  Earns.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct Earns : Codable {
    let id : String?
    let title : String?
    let description : String?
    let term : String?
    let range : String?
    let image_urls : [String]?
    let is_favorite : Bool?
    let latitude : String?
    let longitude : String?
    let company : Company?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case term = "term"
        case range = "range"
        case image_urls = "image_urls"
        case is_favorite = "is_favorite"
        case latitude = "latitude"
        case longitude = "longitude"
        case company = "company"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        term = try values.decodeIfPresent(String.self, forKey: .term)
        range = try values.decodeIfPresent(String.self, forKey: .range)
        image_urls = try values.decodeIfPresent([String].self, forKey: .image_urls)
        is_favorite = try values.decodeIfPresent(Bool.self, forKey: .is_favorite)
        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
        company = try values.decodeIfPresent(Company.self, forKey: .company)
    }

}
