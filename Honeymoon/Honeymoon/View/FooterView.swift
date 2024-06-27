//
//  FooterView.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct FooterView: View {
    // MARK: - Properties
    @Binding var showBookingAlert:Bool
    let haptics = UINotificationFeedbackGenerator()
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle").font(.system(size: 42,weight: .light))
            Spacer()
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()}){
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline,design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(Color.pink)
                    .background(Capsule().stroke(Color.pink,lineWidth: 2))
            }
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size: 42,weight: .light))
        }
        .padding()
    }
}

#Preview {
    FooterView(showBookingAlert: .constant(true))
}
