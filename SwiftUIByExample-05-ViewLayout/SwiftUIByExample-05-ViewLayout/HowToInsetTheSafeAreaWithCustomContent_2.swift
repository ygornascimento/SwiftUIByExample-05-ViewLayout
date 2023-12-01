//
//  HowToInsetTheSafeAreaWithCustomContent_2.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToInsetTheSafeAreaWithCustomContent_2: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a Row")
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Button {
                    print("Show help")
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .symbolRenderingMode(.multicolor)
                        .padding(.trailing)
                }
                .accessibilityLabel("Show help")
            }
        }
    }
}

#Preview {
    HowToInsetTheSafeAreaWithCustomContent_2()
}
