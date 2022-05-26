//
//  GroupsView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 25/05/2022.
//

import SwiftUI

struct GroupsView: View {
    
    @State public var groups: [FriendOrGroup]
    
    var body: some View {
        List(groups.sorted(by: {$0.name < $1.name})) { element in
            FriendsAndGroupsViewCell(name: "Group " + element.name, avatar: element.avatar)
        }
    }

}

//struct GroupsView_Previews: PreviewProvider {
//    static var previews: some View {
//        GroupsView()
//    }
//}
