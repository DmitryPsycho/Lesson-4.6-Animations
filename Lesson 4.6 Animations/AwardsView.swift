//
//  AwardsView.swift
//  Lesson 4.6 Animations
//
//  Created by Psycho on 26.09.2022.
//

import SwiftUI

struct AwardsView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                    Button(action: { showingSheet.toggle() }) {
                        VStack{
                            Image("6086600783")
                                .frame(width: 400, height: 200)
                            Text("Do NOT Open!")
                        }
                    }
                    .fullScreenCover(isPresented: $showingSheet) {
                        GuitarView()
                    }
                   
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
