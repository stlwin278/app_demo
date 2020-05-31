//
//  ExampleResponse.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct ExampleResponse : Codable {
    let data : ExampleData?
    let meta : ExampleMeta?

    enum CodingKeys: String, CodingKey {

        case data = "data"
        case meta = "meta"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(ExampleData.self, forKey: .data)
        meta = try values.decodeIfPresent(ExampleMeta.self, forKey: .meta)
    }

}
