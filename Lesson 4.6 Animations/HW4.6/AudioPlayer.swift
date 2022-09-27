//
//  AudioPlayer.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 27.09.2022.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playSound() {
    let url = Bundle.main.url(forResource: "lesson4.6.2", withExtension: "mp3")
    
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player.play()
    } catch {
        print("error")
    }
}

func stopSound() {
    player.stop()
}

