//
//  HowToProvideVisualStructureUsingForegroundStyles.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToProvideVisualStructureUsingForegroundStyles: View {
    var body: some View {
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(.quaternary)
        
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(
            .linearGradient(colors: [.red, .blue],
                            startPoint: .top,
                            endPoint: .bottom)
        )
    }
}

#Preview {
    HowToProvideVisualStructureUsingForegroundStyles()
}
