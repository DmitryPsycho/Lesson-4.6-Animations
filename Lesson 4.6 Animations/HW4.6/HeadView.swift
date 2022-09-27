//
//  HeadView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 10, y: 80))
                path.addLine(to: CGPoint(x: 70, y: 0))
                path.addLine(to: CGPoint(x: 80, y: 10))
                path.addLine(to: CGPoint(x: 65, y: 50))
                path.addLine(to: CGPoint(x: 55, y: 80))
                path.addLine(to: CGPoint(x: 50, y: 90))
                path.addLine(to: CGPoint(x: 20, y: 90))
            }
            Path { path in
                path.move(to: CGPoint(x: 10, y: 80))
                path.addLine(to: CGPoint(x: 70, y: 0))
                path.addLine(to: CGPoint(x: 80, y: 10))
                path.addLine(to: CGPoint(x: 65, y: 50))
                path.addLine(to: CGPoint(x: 55, y: 80))
                path.addLine(to: CGPoint(x: 50, y: 90))
                path.addLine(to: CGPoint(x: 20, y: 90))
            }
            .stroke(Color.white)
            
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 53, y: 31)
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 47, y: 40)
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 41, y: 49)
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 35, y: 58)
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 29, y: 67)
            Image(systemName: "circlebadge.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 6, height: 6)
                .position(x: 23, y: 76)
        }
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView()
            .frame(width: 100, height: 100)
    }
}
