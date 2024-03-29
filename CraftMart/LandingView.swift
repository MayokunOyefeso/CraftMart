//
//  LandingView.swift
//  CraftMart
//

//  Created by Oluwamayokun Oyefeso on 3/27/24.
//

import SwiftUI

struct LandingView: View {
    
    @Binding var isPresented: Bool
    let customColor = Color("backgroundColor")
    
    var body: some View {
        ZStack{
            customColor.edgesIgnoringSafeArea(.all)
            Text("Craft Mart")
            .font(.custom("PlayfairDisplay-Regular", size: 60))
            .foregroundColor(Color("logoColor"))
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }.onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                withAnimation(.easeIn(duration: 0.2)){
                    isPresented.toggle()
                }
            })
        }
    }
}

#Preview {
    LandingView(isPresented: .constant(true))
}
