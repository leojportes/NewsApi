//
//  CategoryProtocol.swift
//  AppNewsTec
//
//  Created by Leonardo Oliveira Portes on 25/05/21.
//

import Foundation

protocol ConfigureCategory {
    func configureCategory(url: String) -> String
    func makeRequest() -> [New]
}
