//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content:Content) -> some View {
        content
        .font(.largeTitle)
        .foregroundColor(Color.pink)
    }
}


