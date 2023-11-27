//
//  HowToControlSpacingAroundIndividualViewsUsingPadding.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct HowToControlSpacingAroundIndividualViewsUsingPadding: View {
    var body: some View {
        VStack {
            Text("Using")
            Text("SwiftUI").padding().background(.red)
            Text("Rocks")
        }
        
        VStack {
            Text("Using")
            Text("SwiftUI").padding(.bottom).background(.red)
            Text("Rocks")
        }
        
        VStack {
            Text("Using")
            Text("SwiftUI").padding(50).background(.red)
            Text("Rocks")
        }
        
        VStack {
            Text("Using")
            Text("SwiftUI").padding(.bottom, 50).background(.red)
            Text("Rocks")
        }
    }
}

#Preview {
    HowToControlSpacingAroundIndividualViewsUsingPadding()
}
