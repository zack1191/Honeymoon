//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @Binding var showGuideView:Bool
    @Binding var showInfoView:Bool
    let haptics = UINotificationFeedbackGenerator()
    var body: some View {
        HStack{
            Button(action: {playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()}){
                Image(systemName: "info.circle")
                    .font(.system(size: 24,weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView){
                InfoView()
            }
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            Button(action: {playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()}){
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24,weight: .regular))
            }.accentColor(Color.primary)
                .sheet(isPresented: $showGuideView){
                    GuideView()
                }

        }.padding()
    }
}

#Preview {
    HeaderView(showGuideView: .constant(false),showInfoView: .constant(false))
}
