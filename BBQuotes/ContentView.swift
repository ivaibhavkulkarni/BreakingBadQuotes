//
//  ContentView.swift
//  BBQuotes
//
//  Created by Vaibhav kulkarni on 01/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Breaking Bad", systemImage: "tortoise"){
                QuoteView(show: "BreakingBad")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            Tab("Better Call Saul", systemImage: "briefcase"){
                QuoteView(show: "BetterCallSaul")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
