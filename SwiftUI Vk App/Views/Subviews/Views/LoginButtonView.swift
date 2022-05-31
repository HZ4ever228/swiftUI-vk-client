//
//  LoginButtonView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 25/05/2022.
//

import SwiftUI

struct LoginButtonView: View {
    var weight: CGFloat
    private let buttonColor: UIColor = #colorLiteral(red: 0.402541995, green: 0.589343071, blue: 0.7979525328, alpha: 1)
    
    var body: some View {
            Text("Log in")
                .frame(width: weight, height: 40, alignment: .center)
                .foregroundColor(.white)
                .background(Color(buttonColor))
                .shadow(color: .black, radius: 4, x: 4, y: 4)
    }
}
