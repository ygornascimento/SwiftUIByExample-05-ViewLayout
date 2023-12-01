//
//  HowToHideTheHomeIndicatorAndOtherSystemUI.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToHideTheHomeIndicatorAndOtherSystemUI: View {
    var body: some View {
        Text("This nees to take up lots of space")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.yellow)
            .persistentSystemOverlays(.hidden)
    }
}

#Preview {
    HowToHideTheHomeIndicatorAndOtherSystemUI()
}
