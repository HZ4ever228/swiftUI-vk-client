//
//  UnderlineGrayView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 19/05/2022.
//

import SwiftUI

struct UnderlineGrayView: View {
    let weight: CGFloat
    var body: some View {
        Rectangle()
            .size(CGSize(width: weight, height: 1))
            .foregroundColor(.gray)
    }
}
