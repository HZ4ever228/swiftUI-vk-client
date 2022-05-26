//
//  FriendsView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 18/05/2022.
//

import SwiftUI

struct FriendsView: View {
    
    @State public var friends: [FriendOrGroup]
    
    var body: some View {
        List {
            ForEach(makeLettersArray(), id: \.self) { letter in
                Section(header: Text(letter)) {
                    ForEach(friends) { friend in
                        if friend.name.first?.uppercased() == letter {
                            NavigationLink(destination: FriendPhotoView(friendPhotos: [friend.avatar, friend.avatar, friend.avatar])) {
                                FriendsAndGroupsViewCell(name: "Friend " + friend.name, avatar: friend.avatar)
                            }
                        }
                    }
                }
            }
        }
    }
    
    //MARK: - Private functions
    
    private func makeLettersArray() -> [String] {
        var lettersArray: [String] = []
        for friend in friends {
            if !lettersArray.contains(friend.name.first?.uppercased() ?? "") {
                lettersArray.append(friend.name.first?.uppercased() ?? "")
            }
        }
        return lettersArray.sorted(by: {$0 < $1})
    }
}

//struct FriendsAndGroupsView_Previewier: PreviewProvider {
//    static var previews: some View {
//        FriendsAndGroupsView()
//    }
//}


