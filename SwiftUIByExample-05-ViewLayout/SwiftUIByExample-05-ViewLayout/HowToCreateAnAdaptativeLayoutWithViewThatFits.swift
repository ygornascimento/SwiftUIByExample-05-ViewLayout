//
//  HowToCreateAnAdaptativeLayoutWithViewThatFits.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

//Example 2
struct OptionsView: View {
    var body: some View {
        Button("Log in") {}
            .buttonStyle(.borderedProminent)
        Button("Create Account") {}
            .buttonStyle(.bordered)
        Button("Settings") {}
            .buttonStyle(.bordered)
        
        Spacer().frame(width: 50, height: 50)
        
        Button("Need Help?") {}
    }
}

struct HowToCreateAnAdaptativeLayoutWithViewThatFits: View {
    var body: some View {
        
        //Example 4
        let terms = String(repeating: "abcde", count: 100)
        
        //Example 1
        ViewThatFits {
            Label("Welcome to AwesomeApp", systemImage: "bolt.shield")
                .font(.largeTitle)
            Label("Welcome", systemImage: "bolt.shield")
                .font(.largeTitle)
            Label("Welcome", systemImage: "bolt.shield")
        }
        
        //Example 2
        ViewThatFits {
            HStack(content: OptionsView.init)
            VStack(content: OptionsView.init)
        }
        
        //Example 3
        ViewThatFits {
            HStack {
                Text("The rain")
                Text("in Spain")
                Text("falls mainly")
                Text("on the Spaniards")
            }

            VStack {
                Text("The rain")
                Text("in Spain")
                Text("falls mainly")
                Text("on the Spaniards")
            }
        }
        .font(.title)
        
        //Example 4
        ViewThatFits {
            Text(terms)
            
            ScrollView {
                Text(terms)
            }
        }
        
        //Example 5
        ViewThatFits(in: .vertical) {
            Text(terms)
            
            ScrollView {
                Text(terms)
            }
        }
    }
}

#Preview {
    HowToCreateAnAdaptativeLayoutWithViewThatFits()
}
