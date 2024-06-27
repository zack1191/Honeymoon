//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import AVFoundation

var audioPlayer:AVAudioPlayer?
func playSound(sound:String,type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:path))
            audioPlayer?.play()
        }catch{
            print("Error:Could not play sound.")
        }
    }
}

