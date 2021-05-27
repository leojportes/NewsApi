//
//  New.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//

import Foundation


// MARK: - Article
struct Article: Codable {
    let author: String
    let title: String
    let articleDescription: String
    let url: String
    let urlToImage: String
//    let publishedAt: Date
//    let content: String

    enum CodingKeys: String, CodingKey {
        case author
        case title
        case articleDescription = "description"
        case url
        case urlToImage
//      case publishedAt, content
    }
    
}
