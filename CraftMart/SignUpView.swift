//
//  SignUpView.swift
//  CraftMart
//
//  Created by Oluwamayokun Oyefeso on 3/23/24.
//

import SwiftUI

struct SignUpView: View {
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var confirm_password = ""
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color("backgroundColor"))
                    .rotationEffect(Angle(degrees: 15))
                    
                VStack{
                    Text("Sign Up")
                        .font(.custom("PlayfairDisplay-Regular", size: 45))
                        .foregroundColor(Color("logoColor"))
                        .padding(.top, 70)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 250)
            .offset(y: -135)
            
            Spacer ()
            
            Form{
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                    
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                
                SecureField("Confirm Password", text: $confirm_password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                
                .padding(.bottom, 100)
                
                Button {
                    //Attempt login
                }
                label: {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("backgroundColor"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .offset(x: 100)
                            
                        Text("Sign Up")
                            .foregroundColor(Color("logoColor"))
                            .offset(x: 100)
                            .bold()
                    }
                }
            }
            .scrollContentBackground(.hidden)

        }
    }
}

#Preview {
    SignUpView()
}
