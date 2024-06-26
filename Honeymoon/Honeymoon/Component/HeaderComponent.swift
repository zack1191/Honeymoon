//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center,spacing: 20) {
            Capsule().frame(width: 120,height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.2)
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

#Preview {
    HeaderComponent()
}
