//
//  howToPlaceContentOutsideTheSafeArea.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct howToPlaceContentOutsideTheSafeArea: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
            .ignoresSafeArea()
    }
}

#Preview {
    howToPlaceContentOutsideTheSafeArea()
}
