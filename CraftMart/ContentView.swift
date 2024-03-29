//
//  ContentView.swift
//  CraftMart
//
//  Created by Oluwamayokun Oyefeso on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var showSignUp = false
    @State var loginid = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color("backgroundColor"))
                        .rotationEffect(Angle(degrees: 15))
                        
                    VStack{
                        Text("Sign In")
                            .font(.custom("PlayfairDisplay-Regular", size: 45))
                            .foregroundColor(Color("logoColor"))
                            .padding(.top, 70)
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 3, height: 250)
                .offset(y: -100)
                
                Spacer ()
                //Sign in Form
                
                
                Form{
                    TextField("Username or email", text: $loginid)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                        
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                    
                    Button("Forgot Password?") {
                        //Attempt login
                    }
                    .listRowSeparator(.hidden)
                    .offset(x: 175)
                    .padding(.bottom, 50)
                    
                    Button {
                       
                    }
                    label: {
                        ZStack(alignment: .center){
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("backgroundColor"))
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .offset(x: 100)
                                
                            Text("Sign In")
                                .foregroundColor(Color("logoColor"))
                                .offset(x: 100)
                                .bold()
                        }
                    }
                }
                .scrollContentBackground(.hidden)

                
                VStack{
                    Text("Don't have an account?")
                    Button("Sign Up") {
                        showSignUp = true
                    }
                    .navigationDestination(isPresented: $showSignUp, destination: { SignUpView() })
                }
                .padding(.bottom, 10)
            }

            
        }
        
    }
}

#Preview {
    ContentView()
}
