//
//  grifFlower.swift
//  Lesson 4.6 HomeWork
//
//  Created by Psycho on 27.09.2022.
//

import SwiftUI

struct GriefFlowerView: View {
    
    @State private var mlGrief = false
    @State private var mrGrief = false
    
    var body: some View {
        ZStack {
            ZStack {
                GriefRotationView(rotation: $mlGrief, degree: -15)
                    .onAppear {
                        mlGrief.toggle()
                    }
                GriefRotationView(rotation: $mlGrief, degree: -30)
                GriefRotationView(rotation: $mlGrief, degree: -45)
                GriefRotationView(rotation: $mlGrief, degree: -60)
    
                GriefRotationView(rotation: $mrGrief, degree: 15)
                    .onAppear {
                        mrGrief.toggle()
                    }
                GriefRotationView(rotation: $mrGrief, degree: 30)
                GriefRotationView(rotation: $mrGrief, degree: 45)
                GriefRotationView(rotation: $mrGrief, degree: 60)
                    
            }
        }
    }
}

struct grifFlower_Previews: PreviewProvider {
    static var previews: some View {
        GriefFlowerView()
    }
}

struct GriefRotationView: View {
    @Binding var rotation: Bool
    var degree: Double
    
    var body: some View {
        FullGriefView()
            .frame(width: 30, height: 300, alignment: .center)
            .rotationEffect(.degrees(rotation ? degree : 0), anchor: .bottom)
            .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: rotation)
    }
}
