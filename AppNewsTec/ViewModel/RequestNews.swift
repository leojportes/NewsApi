//
//  RequestNews.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//


import Foundation

class RequestNews {

    let apiRequest = "https://newsapi.org/v2/everything?q=tecnologia&language=pt&apiKey="
   
    var url: String {
        return apiRequest
    }
    
    func makeRequest() -> [New] {
        if let url = URL(string: (apiRequest)+apiKey)  {
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


