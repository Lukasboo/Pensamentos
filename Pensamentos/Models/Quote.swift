//
//  Quote.swift
//  Pensamentos
//
//  Created by Ricardo Corrales on 27/12/17.
//  Copyright © 2017 Ricardo Corrales. All rights reserved.
//

import Foundation

struct Quote: Codable { //Encodable, Decodable
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "‟" + quote + "”"
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
    
}
