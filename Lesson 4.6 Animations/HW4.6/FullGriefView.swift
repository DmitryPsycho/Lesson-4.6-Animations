//
//  FullGriefView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 27.09.2022.
//

import SwiftUI

struct FullGriefView: View {
    var body: some View {
        ZStack {
            GriefView()
                .frame(width: 30, height: 250)
            HeadView()
                .frame(width: 100, height: 100)
                .position(x: 30, y: 5)
        }
    }
}

struct FullGriefView_Previews: PreviewProvider {
    static var previews: some View {
        FullGriefView()
            .frame(width: 30, height: 330)
    }
}
