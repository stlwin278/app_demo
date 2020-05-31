//
//  Company.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct Company : Codable {
    let id : String?
    let name : String?
    let description : String?
    let image_urls : [String]?
    let image_mobile_urls : [String]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case description = "description"
        case image_urls = "image_urls"
        case image_mobile_urls = "image_mobile_urls"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        image_urls = try values.decodeIfPresent([String].self, forKey: .image_urls)
        image_mobile_urls = try values.decodeIfPresent([String].self, forKey: .image_mobile_urls)
    }

}
