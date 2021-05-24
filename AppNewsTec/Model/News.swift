//
//  Noticia.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//

import Foundation





struct News: Codable {
    
    let articles: [New]
    enum CodingKeys: String, CodingKey {
        case articles
    }
}

