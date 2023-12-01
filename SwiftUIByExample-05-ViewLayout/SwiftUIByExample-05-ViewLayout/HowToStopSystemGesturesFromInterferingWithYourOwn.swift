//
//  HowToStopSystemGesturesFromInterferingWithYourOwn.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToStopSystemGesturesFromInterferingWithYourOwn: View {
    @State private var input = 0.0
    var body: some View {
        Text("Current value: \(input)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(Rectangle())
            .gesture(DragGesture().onChanged({ value in
                input =  value.location.y - value.startLocation.y
            })).defersSystemGestures(on: .vertical)
    }
}

#Preview {
    HowToStopSystemGesturesFromInterferingWithYourOwn()
}
