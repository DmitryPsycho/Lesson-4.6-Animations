//
//  DeckView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct DeckView: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 90, y: 60))
                path.addLine(to: CGPoint(x: 150, y: 80))
                path.addLine(to: CGPoint(x: 160, y: 75))
                path.addLine(to: CGPoint(x: 260, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 150))
                path.addLine(to: CGPoint(x: 240, y: 220))
                path.addLine(to: CGPoint(x: 150, y: 270))
                path.addLine(to: CGPoint(x: 30, y: 300))
                path.addLine(to: CGPoint(x: 100, y: 150))
                path.closeSubpath()
            }
            Path { path in
                path.move(to: CGPoint(x: 90, y: 60))
                path.addLine(to: CGPoint(x: 150, y: 80))
                path.addLine(to: CGPoint(x: 160, y: 75))
                path.addLine(to: CGPoint(x: 260, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 150))
                path.addLine(to: CGPoint(x: 240, y: 220))
                path.addLine(to: CGPoint(x: 150, y: 270))
                path.addLine(to: CGPoint(x: 30, y: 300))
                path.addLine(to: CGPoint(x: 100, y: 150))
                path.closeSubpath()
            }
            .stroke(Color.white)
            
            Image(systemName: "note")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 30, height: 20)
                .position(x: 150, y: 120)
            Image(systemName: "note")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 30, height: 20)
                .position(x: 150, y: 170)
            Image(systemName: "poweroff")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 13, height: 13)
                .position(x: 190, y: 180)
            Image(systemName: "poweroff")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 13, height: 13)
                .position(x: 185, y: 210)
            Image(systemName: "poweroff")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 13, height: 13)
                .position(x: 190, y: 180)
            Image(systemName: "directcurrent")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 30, height: 10)
                .rotationEffect(.degrees(180))
                .position(x: 150, y: 200)
            Image(systemName: "target")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 10, height: 10)
                .position(x: 215, y: 65)
        }
    }
}

struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .frame(width: 300, height: 300)
    }
}
