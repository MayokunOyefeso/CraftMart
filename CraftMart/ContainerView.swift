//
//  ContainerView.swift
//  CraftMart
//
//  Created by Oluwamayokun Oyefeso on 3/29/24.
//

import SwiftUI

struct ContainerView: View {
    @State private var isLandingViewPresented = true
    var body: some View {
        if !isLandingViewPresented{
            ContentView()
        } else{
            LandingView(isPresented: $isLandingViewPresented)
        }
    }
}

#Preview {
    ContainerView()
}
