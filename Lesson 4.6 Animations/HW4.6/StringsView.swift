//
//  StringView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct StringsView: View {
    var body: some View {
        ZStack {
            StringView(
                lineWidth: 1.5,
                xFromPosition: 3,
                yFromPosition: 0,
                xToPosition: 3,
                yToPosition: 335
            )
            StringView(lineWidth: 1.3,
                   xFromPosition: 8,
                   yFromPosition: 0,
                   xToPosition: 8,
                   yToPosition: 335
            )
            StringView(lineWidth: 1,
                   xFromPosition: 13,
                   yFromPosition: 0,
                   xToPosition: 13,
                   yToPosition: 335
            )
            StringView(lineWidth: 0.8,
                   xFromPosition: 18,
                   yFromPosition: 0,
                   xToPosition: 18,
                   yToPosition: 335
            )
            StringView(lineWidth: 0.6,
                   xFromPosition: 23,
                   yFromPosition: 0,
                   xToPosition: 23,
                   yToPosition: 335
            )
            StringView(lineWidth: 0.4,
                   xFromPosition: 27,
                   yFromPosition: 0,
                   xToPosition: 27,
                   yToPosition: 335
            )
        }
    }
}

struct StringsView_Previews: PreviewProvider {
    static var previews: some View {
        StringsView()
            .frame(width: 30, height: 330)
    }
}

struct StringView: View {
    let lineWidth: CGFloat
    
    let xFromPosition: CGFloat
    let yFromPosition: CGFloat
    
    let xToPosition: CGFloat
    let yToPosition: CGFloat
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: xFromPosition, y: yFromPosition))
            path.addLine(to: CGPoint(x: xToPosition, y: yToPosition))
        }
        .stroke(
            Color.brown,
            style: StrokeStyle(
                lineWidth: lineWidth
            )
        )
    }
}
