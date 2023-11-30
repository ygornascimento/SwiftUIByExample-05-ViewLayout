//
//  HowToControlLayoutPriorityUsingLayouPriority.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 30/11/23.
//

import SwiftUI

struct HowToControlLayoutPriorityUsingLayouPriority: View {
    var body: some View {
        HStack {
            Text("The rain Spain falls mainly on the Spaniards.")
            Text("Knowledge is power, France is bacon.")
                .layoutPriority(1)
        }
        .font(.largeTitle)
    }
}

#Preview {
    HowToControlLayoutPriorityUsingLayouPriority()
}
