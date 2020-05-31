//
//  JsonData.swift
//  app_demo
//
//  Created by SanThit on 29/05/2020.
//  Copyright © 2020 SanThitLwin. All rights reserved.
//

import Foundation

class JsonData {
    
    func loadData() -> ExampleResponse {
        var data: ExampleResponse!
        let url = Bundle.main.url(forResource: "example", withExtension: "json")!
        do {
            let jsonData = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            data = try decoder.decode(ExampleResponse.self, from: jsonData)
        } catch { print(error) }
        return data
    }
}
