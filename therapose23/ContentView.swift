//
//  ContentView.swift
//  therapose23
//
//  Created by Twisha Patel on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var myNavigationTitle = "Doctor Login"
    @State private var myNavigationTitle2 = "Login"
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white.opacity(0.50))
                VStack {
                    NavigationLink(myNavigationTitle, destination: ContentView2())
                    Text("Patient Login").font(.largeTitle).bold()
                    TextField("Username", text: $username).padding().frame(width:300, height:50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red,width:CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password).padding().frame(width:300, height:50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red,width:CGFloat(wrongPassword))
                    
                    NavigationLink(myNavigationTitle2, destination: DoctorDash()).bold().font(.title)
                    
                    
                }
            }
            
            .navigationBarHidden(true)
            //.navigationTitle("Patient Login")
        }
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
