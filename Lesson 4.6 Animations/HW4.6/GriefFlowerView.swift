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
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mlGrief ? -15 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mlGrief)
                    .onAppear{
                        mlGrief.toggle()
                    }
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mlGrief ? -30 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mlGrief)
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mlGrief ? -45 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mlGrief)
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mlGrief ? -60 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mrGrief)
    
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mrGrief ? 15 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mrGrief)
                    .onAppear{
                        mrGrief.toggle()
                    }
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mrGrief ? 30 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mrGrief)

                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mrGrief ? 45 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mrGrief)
                   
                FullGriefView()
                    .frame(width: 30, height: 300, alignment: .center)
                    .rotationEffect(.degrees(mrGrief ? 60 : 0), anchor: .bottom)
                    .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true), value: mrGrief)
                    
            }
        }
    }
}

struct grifFlower_Previews: PreviewProvider {
    static var previews: some View {
        GriefFlowerView()
    }
}
