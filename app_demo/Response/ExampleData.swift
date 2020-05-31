//
//  ExampleData.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct ExampleData : Codable {
    let highlights : [Highlights]?
    let banners : [Banners]?
    let merchants : [Merchants]?
    let earns : [Earns]?
    let characters : [String]?
    let news : [News]?

    enum CodingKeys: String, CodingKey {

        case highlights = "highlights"
        case banners = "banners"
        case merchants = "merchants"
        case earns = "earns"
        case characters = "characters"
        case news = "news"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        highlights = try values.decodeIfPresent([Highlights].self, forKey: .highlights)
        banners = try values.decodeIfPresent([Banners].self, forKey: .banners)
        merchants = try values.decodeIfPresent([Merchants].self, forKey: .merchants)
        earns = try values.decodeIfPresent([Earns].self, forKey: .earns)
        characters = try values.decodeIfPresent([String].self, forKey: .characters)
        news = try values.decodeIfPresent([News].self, forKey: .news)
    }

}
