//
//  HowToDynamicallyChangeBetweenVStackAndHStack.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToDynamicallyChangeBetweenVStackAndHStack: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        let layout = horizontalSizeClass == .regular ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        
        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
    }
}

#Preview {
    HowToDynamicallyChangeBetweenVStackAndHStack()
}
