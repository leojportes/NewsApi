//
//  RequestNews.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 24/05/21.
//


import Foundation



class RequestNews {

    
    
//    let urlApi = "https://newsapi.org/v2/everything?q=tecnologia&language=pt&apiKey="
//
  



    
    func makeRequest(url: String) -> [Article] {
        
        if let url = URL(string: firstPointUrl+(url)+languageArticlesUrl+apiKey)  {
            if let data = try? Data(contentsOf: url) {
                var news: [Article] = []
                let decoder = JSONDecoder()
                if let newsJson = try? decoder.decode(Articles.self, from: data) {
                    news = newsJson.articles
                    return news
                }
            }
        }
         return []
    }
    
 
}


