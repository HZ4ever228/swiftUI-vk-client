//
//  NewsView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 26/05/2022.
//

import SwiftUI

struct NewsView: View {
    
    @State public var newsArray: [News]
    
    var body: some View {
        List(newsArray) { news in
            NewsCell(newsTitle: news.title, newsBody: news.body)
        }
    }
}

//struct NewsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsView()
//    }
//}
