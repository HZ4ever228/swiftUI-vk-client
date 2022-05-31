//
//  TapBarView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 19/05/2022.
//

import SwiftUI

enum Tabs: String {
    case friends
    case groups
    case news
}

struct TapBarView: View {
    @State private var friendOrGroup: [FriendOrGroup] = [
        FriendOrGroup(name: "Vasia", imageName: "person"),
        FriendOrGroup(name: "Vasia 2", imageName: "person"),
        FriendOrGroup(name: "Petia", imageName: "person"),
        FriendOrGroup(name: "Oleg", imageName: "person"),
        FriendOrGroup(name: "Denis", imageName: "person"),
    ]
    @State private var news: [News] = [
        News(title: "First news", body: "First news text"),
        News(title: "Second news", body: "Second news text"),
        News(title: "Third news", body: "Third news text"),
        News(title: "Fourth news", body: "Fourth news text"),
        News(title: "Fifth news", body: "Fifth news text"),
    ]
    @State private var sellectedTab: Tabs = .friends
    
    var body: some View {
        TabView(selection: $sellectedTab) {
            FriendsView(friends: friendOrGroup)
                .tabItem {
                    Image(systemName: "person")
                    Text("Friends")
                }
                .tag(Tabs.friends)
            
            GroupsView(groups: friendOrGroup)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Groups")
                }
                .tag(Tabs.groups)
            
            NewsView(newsArray: news)
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
                .tag(Tabs.news)
        }
        .navigationTitle(sellectedTab.rawValue.capitalized)
        .navigationBarBackButtonHidden(true)
        .background(Color(UIColor.lightGray))
    }
}

struct TapBarView_Previews: PreviewProvider {
    static var previews: some View {
        TapBarView()
    }
}
