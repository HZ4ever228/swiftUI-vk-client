//
//  FriendsAndGroupsViewCell.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 25/05/2022.
//

import SwiftUI

struct FriendsAndGroupsViewCell: View {
    private let backgroungColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    @State var name: String = "Name Lastname"
    @State var avatar: UIImage = UIImage(systemName: "person.fill")!
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(uiImage: avatar)
                .resizable()
                .frame(minWidth: 25, idealWidth: 30, maxWidth: 35, minHeight: 25, idealHeight: 30, maxHeight: 35, alignment: .center)
                .padding(.leading, 20)
            
            Text(name)
                .lineLimit(1)
        }
        .background(Color(backgroungColor))
    }
}
