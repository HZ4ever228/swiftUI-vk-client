//
//  FriendPhotoView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 25/05/2022.
//

import SwiftUI

struct FriendPhotoView: View {
    @State public var friendPhotos: [UIImage]
    var body: some View {
        List {
            ForEach(friendPhotos, id: \.self) { friendPhoto in
                Image(uiImage: friendPhoto)
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
            }
        }
    }
}

//struct FriendPhotoView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendPhotoView()
//    }
//}
