//
//  Noticia.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//

import Foundation


struct Articles: Codable {
    
    let articles: [Article]
    enum CodingKeys: String, CodingKey {
        case articles
    }
}

