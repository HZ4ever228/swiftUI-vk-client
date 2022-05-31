//
//  NewsCell.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 26/05/2022.
//

import SwiftUI

struct NewsCell: View {
    @State var newsTitle: String = "News Title"
    @State var newsBody: String = "News Body"
    
    var body: some View {
        VStack(spacing: 8.0) {
            Text(newsTitle)
                .font(.title)
            
            Text(newsBody)
                .multilineTextAlignment(.leading)
        }
    }
}
