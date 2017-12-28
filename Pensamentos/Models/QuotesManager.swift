//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Ricardo Corrales on 27/12/17.
//  Copyright © 2017 Ricardo Corrales. All rights reserved.
//

import Foundation

class QuotesManager {
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!        
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecodable = JSONDecoder()
        quotes = try! jsonDecodable.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote()  -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
    
}
