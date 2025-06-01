//
//  QuoteView.swift
//  BBQuotes
//
//  Created by Vaibhav kulkarni on 01/06/25.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        TabView{
            Tab("Breaking Bad", systemImage: "tortoise"){
                Text("Breaking Bad")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            Tab("Better Call Saul", systemImage: "briefcase"){
                Text("Better Call Saul")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    QuoteView()
}
