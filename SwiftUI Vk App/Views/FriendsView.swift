//
//  FriendsView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 18/05/2022.
//

import SwiftUI

struct FriendsAndGroupsView: View {
    
    private let backgroungColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    @State var name: String = "Name Lastname"
    @State var avatar: UIImage = UIImage(systemName: "person.fill")!
    
    var body: some View {
        GeometryReader { geometryProxy in
            HStack(alignment: .center, spacing: 20) {
                Image(uiImage: avatar)
                    .resizable()
                    .frame(minWidth: 40, idealWidth: 50, maxWidth: 60, minHeight: 40, idealHeight: 50, maxHeight: 60, alignment: .center)
                    .padding(.leading, 20)
                    
                Text(name)
                    .lineLimit(1)
            }
            .background(Color(backgroungColor))
        }
    }
}

