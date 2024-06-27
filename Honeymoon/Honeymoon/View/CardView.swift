//
//  CardView.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct CardView: View,Identifiable{
    // MARK: - Properties
    let id=UUID()
    var honeymoon:Destination
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0,maxWidth: .infinity)
            .overlay(
                VStack(alignment:.center,spacing: 12) {
                    Text(honeymoon.place.uppercased()).foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal,18)
                        .padding(.vertical,4)
                        .overlay(Rectangle().fill(Color.white).frame(height: 1),alignment: .bottom)
                    Text(honeymoon.country.uppercased()).foregroundColor(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .background(Capsule().fill(Color.white))
                }.frame(minWidth: 280)
                    .padding(.bottom,50),
                alignment: .bottom)}
}

#Preview {
    CardView(honeymoon: honeymoonData[0])
}
