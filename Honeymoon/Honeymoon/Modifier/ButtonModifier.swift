//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0,maxWidth: .infinity)
            .background(Capsule().fill(Color.pink))
            .foregroundColor(Color.white)
    }
}


