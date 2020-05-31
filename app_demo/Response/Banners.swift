//
//  Banners.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct Banners : Codable {
    let id : String?
    let title : String?
    let image_banner_url : String?
    let image_mobile_banner_url : String?
    let target_type : String?
    let target_id : String?
    let order : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case image_banner_url = "image_banner_url"
        case image_mobile_banner_url = "image_mobile_banner_url"
        case target_type = "target_type"
        case target_id = "target_id"
        case order = "order"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        image_banner_url = try values.decodeIfPresent(String.self, forKey: .image_banner_url)
        image_mobile_banner_url = try values.decodeIfPresent(String.self, forKey: .image_mobile_banner_url)
        target_type = try values.decodeIfPresent(String.self, forKey: .target_type)
        target_id = try values.decodeIfPresent(String.self, forKey: .target_id)
        order = try values.decodeIfPresent(String.self, forKey: .order)
    }

}

