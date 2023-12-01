//
//  HowToDynamicallyChangeBetweenVStackAndHStack_2.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToDynamicallyChangeBetweenVStackAndHStack_2: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    
    var body: some View {
        let layout = dynamicTypeSize <= .xxxLarge ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        
        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
    }
}

#Preview {
    HowToDynamicallyChangeBetweenVStackAndHStack_2()
}
