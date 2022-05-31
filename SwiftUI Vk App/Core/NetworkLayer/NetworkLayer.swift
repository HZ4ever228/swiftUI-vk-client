//
//  NetworkLayer.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 31/05/2022.
//

import Foundation

struct NetworkService {
    
    func getLoginURL() -> URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "oauth.vk.com"
        components.path = "/authorize"
        components.queryItems = [
            URLQueryItem(name: "client_id", value: "7922523"),
            URLQueryItem(name: "scope", value: "270342"),
            URLQueryItem(name: "display", value: "mobile"),
            URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
            URLQueryItem(name: "response_type", value: "token"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        return components.url!
    }
    
}
