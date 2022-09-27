//
//  ContentView.swift
//  Lesson 4.6 Animations
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: btnAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                        .animation(.default, value: awardIsShowing)
                }
            }
            Spacer()
            if awardIsShowing {
                GradientRectangles()
                    .frame(width: 250, height: 250)
                    .transition(.scale)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    private func btnAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
