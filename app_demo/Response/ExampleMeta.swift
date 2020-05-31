//
//  ExampleMeta.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation
struct ExampleMeta : Codable {
    let pagination : Pagination?
    let version : Int?
    let code : String?
    let current_time : String?

    enum CodingKeys: String, CodingKey {

        case pagination = "pagination"
        case version = "version"
        case code = "code"
        case current_time = "current_time"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        pagination = try values.decodeIfPresent(Pagination.self, forKey: .pagination)
        version = try values.decodeIfPresent(Int.self, forKey: .version)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        current_time = try values.decodeIfPresent(String.self, forKey: .current_time)
    }

}
