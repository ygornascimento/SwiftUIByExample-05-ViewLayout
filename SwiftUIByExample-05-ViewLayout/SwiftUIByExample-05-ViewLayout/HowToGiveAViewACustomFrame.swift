//
//  ContentView.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct HowToGiveAViewACustomFrame: View {
    var body: some View {
        Button {
            print("Button tapped")
        } label: {
            Text("Welcome")
                .frame(minWidth: 0,
                       maxWidth: 200,
                       minHeight: 0,
                       maxHeight: 200)
                .font(.largeTitle)
        }
        
        Text("Plese log in")
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(.red)
    }
}

#Preview {
    HowToGiveAViewACustomFrame()
}
