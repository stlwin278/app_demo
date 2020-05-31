//
//  Products.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct Products : Codable {
    let id : String?
    let title : String?
    let point : Int?
    let description : String?
    let term : String?
    let product_type : String?
    let is_favorite : Bool?
    let started_at : String?
    let ended_at : String?
    let image_urls : [String]?
    let count : Int?
    let discount_point : Int?
    let redeem_survey_id : String?
    let use_survey_id : String?
    let url : String?
    let company : Company?
    let is_shown : Bool?
    let is_flash : Bool?
    let flash_started_at : String?
    let similar_products : [String]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case point = "point"
        case description = "description"
        case term = "term"
        case product_type = "product_type"
        case is_favorite = "is_favorite"
        case started_at = "started_at"
        case ended_at = "ended_at"
        case image_urls = "image_urls"
        case count = "count"
        case discount_point = "discount_point"
        case redeem_survey_id = "redeem_survey_id"
        case use_survey_id = "use_survey_id"
        case url = "url"
        case company = "company"
        case is_shown = "is_shown"
        case is_flash = "is_flash"
        case flash_started_at = "flash_started_at"
        case similar_products = "similar_products"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        point = try values.decodeIfPresent(Int.self, forKey: .point)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        term = try values.decodeIfPresent(String.self, forKey: .term)
        product_type = try values.decodeIfPresent(String.self, forKey: .product_type)
        is_favorite = try values.decodeIfPresent(Bool.self, forKey: .is_favorite)
        started_at = try values.decodeIfPresent(String.self, forKey: .started_at)
        ended_at = try values.decodeIfPresent(String.self, forKey: .ended_at)
        image_urls = try values.decodeIfPresent([String].self, forKey: .image_urls)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
        discount_point = try values.decodeIfPresent(Int.self, forKey: .discount_point)
        redeem_survey_id = try values.decodeIfPresent(String.self, forKey: .redeem_survey_id)
        use_survey_id = try values.decodeIfPresent(String.self, forKey: .use_survey_id)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        company = try values.decodeIfPresent(Company.self, forKey: .company)
        is_shown = try values.decodeIfPresent(Bool.self, forKey: .is_shown)
        is_flash = try values.decodeIfPresent(Bool.self, forKey: .is_flash)
        flash_started_at = try values.decodeIfPresent(String.self, forKey: .flash_started_at)
        similar_products = try values.decodeIfPresent([String].self, forKey: .similar_products)
    }

}
