//
//  ContentView.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct GuitarView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var start = false
    @State private var percentAnimated: CGFloat = .zero
    @State private var viewId = 0
    
    var body: some View {
        VStack(spacing: 15) {
            Button(action: start ? backToAwards : animationWithSound) {
                Text(start ? "Back to Awards" : "Open?")
            }
            Button(action: start ? {} : { presentationMode.wrappedValue.dismiss() }) {
                Text(start ? "" : "Back to Awards")
            }
            ZStack {
                if start {
                    Image("stage")
                        .resizable()
                        .frame(width: 350, height: 580)
                        .cornerRadius(20)
                        .position(x: 181, y: 290)
                        .transition(.scale)
                        .id(viewId)
                    
                    GriefFlowerView()
                        .position(x: 181, y: 223)
                        .transition(.scale)
                        .id(viewId)
                    DeckView()
                        .frame(width: 300, height: 300)
                        .position(x: 181, y: 400)
                        .transition(.leadingSlide)
                        .id(viewId)
                    GriefView()
                        .frame(width: 30, height: 250)
                        .position(x: 181, y: 223)
                        .transition(.push(from: .bottom))
                        .id(viewId)
                    HeadView()
                        .position(x: 326, y: 326)
                        .transition(.move(edge: .top).combined(with: .slide))
                        .id(viewId)
                    StringsView()
                        .frame(width: 30, height: 330)
                        .position(x: 181, y: 284)
                        .transition(.scale.animation(.interpolatingSpring(stiffness: 90, damping: 5)))
                        .id(viewId)
                }
            }
            
            if start {
                Button(action: animationWithOutSound) {
                    Text("Restart")
                }
                .padding()
            }
        }
        .padding()
    }
    
    private func animationWithSound() {
        viewId += 1
        playSound()
        withAnimation {
            start.toggle()
        }
    }
    
    private func animationWithOutSound() {
        viewId += 1
        stopSound()
        start.toggle()
        withAnimation {
            start.toggle()
        }
    }
    
    private func backToAwards() {
        viewId += 1
        stopSound()
        start.toggle()
        presentationMode.wrappedValue.dismiss()
    }
}

struct GuitarView_Previews: PreviewProvider {
    static var previews: some View {
        GuitarView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .top)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
