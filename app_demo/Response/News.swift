//
//  News.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct News : Codable {
    let id : String?
    let title : String?
    let description : String?
    let image_url : String?
    let image_mobile_url : String?
    let created_at : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case image_url = "image_url"
        case image_mobile_url = "image_mobile_url"
        case created_at = "created_at"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        image_url = try values.decodeIfPresent(String.self, forKey: .image_url)
        image_mobile_url = try values.decodeIfPresent(String.self, forKey: .image_mobile_url)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
    }

}

