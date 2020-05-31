//
//  Highlights.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct Highlights : Codable {
    let id : String?
    let title : String?
    let highlight_type : String?
    let started_at : String?
    let ended_at : String?
    let image_url : String?
    let character : String?
    let products : [Products]?
    let earns : [String]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case highlight_type = "highlight_type"
        case started_at = "started_at"
        case ended_at = "ended_at"
        case image_url = "image_url"
        case character = "character"
        case products = "products"
        case earns = "earns"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        highlight_type = try values.decodeIfPresent(String.self, forKey: .highlight_type)
        started_at = try values.decodeIfPresent(String.self, forKey: .started_at)
        ended_at = try values.decodeIfPresent(String.self, forKey: .ended_at)
        image_url = try values.decodeIfPresent(String.self, forKey: .image_url)
        character = try values.decodeIfPresent(String.self, forKey: .character)
        products = try values.decodeIfPresent([Products].self, forKey: .products)
        earns = try values.decodeIfPresent([String].self, forKey: .earns)
    }

}

