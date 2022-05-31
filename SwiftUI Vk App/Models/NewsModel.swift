//
//  NewsModel.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 26/05/2022.
//

import UIKit

class News: Identifiable {
    
    let title: String
    let body: String
    
    internal init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}
