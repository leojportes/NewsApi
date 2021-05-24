//
//  RequestNews.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//


import Foundation

class RequestNews {

    let apiRequest = "https://newsapi.org/v2/everything?q=tecnologia&language=pt&apiKey=64f7fecd9b4c43c382ccc864b7af0401"
    var url: String {
    return apiRequest
    }
    
    func makeRequest() -> [New] {
        if let url = URL(string: url)  {
        if let data = try? Data(contentsOf: url) {
            var news: [New] = []
            let decoder = JSONDecoder()
            if let newsJson = try? decoder.decode(News.self, from: data) {
                news = newsJson.articles
                return news
            }
        }
    }
    return []
        
    }
}


