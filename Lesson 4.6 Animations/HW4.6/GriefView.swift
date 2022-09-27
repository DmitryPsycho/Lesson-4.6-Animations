//
//  GriefView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct GriefView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 30, height: 250)
                .foregroundColor(Color(red: 0.39, green: 0.19, blue: 0.12))
            ZStack {
                FretView(yPosition: 17)
                FretView(yPosition: 35)
                FretView(yPosition: 53)
                FretView(yPosition: 71)
                FretView(yPosition: 88)
                FretView(yPosition: 106)
                FretView(yPosition: 124)
                FretView(yPosition: 141)
                FretView(yPosition: 158)
            }
            ZStack{
                FretView(yPosition: 175)
                FretView(yPosition: 190)
                FretView(yPosition: 203)
                FretView(yPosition: 216)
                FretView(yPosition: 229)
                FretView(yPosition: 241)
            }
        }
    }
    
    struct GriefView_Previews: PreviewProvider {
        static var previews: some View {
            GriefView()
                .frame(width: 30, height: 250)
        }
    }
    
    struct FretView: View {
        let yPosition: CGFloat
        
        var body: some View {
            Image(systemName: "poweron")
                .resizable()
                .foregroundColor(.white)
                .rotationEffect(.degrees(90))
                .frame(width: 2, height: 30)
                .position(x: 15, y: yPosition)
        }
    }
}
