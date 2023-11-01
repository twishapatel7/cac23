//
//  ContentView2.swift
//  therapose23
//
//  Created by Twisha Patel on 10/31/23.
//

import Foundation

import SwiftUI

struct ContentView2: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var myNavigationTitle = "Login"
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white.opacity(0.50))
                VStack {
                    Text("Doctor Login")
                        .font(.largeTitle).bold().padding()
                    TextField("Username", text: $username).padding().frame(width:300, height:50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red,width:CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password).padding().frame(width:300, height:50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red,width:CGFloat(wrongPassword))
                    
                    
                    NavigationLink(myNavigationTitle, destination: PatientDash()
                        .padding(.bottom, -12.0)).bold().font(.title)
                    
                }
            }
            .navigationBarHidden(true)
        }
            
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
