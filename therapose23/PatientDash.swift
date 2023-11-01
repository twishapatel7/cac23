//
//  PatientDash.swift
//  therapose23
//
//  Created by Twisha Patel on 10/31/23.
//

import Foundation
import SwiftUI

struct PatientDash: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var note: String = ""
    @State private var selection = "Jack"
        let colors = ["Jack", "Rose", "Mark", "Jenny", "Randy"]
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                Circle().scale(1.9).foregroundColor(.white.opacity(0.40))
                
                VStack {
                    
                    Button("Doctor Dashboard"){
                    }.font(.largeTitle).bold().foregroundColor(.black).frame(width:300,height:50).background(Color.white).cornerRadius(10).padding()
                    Picker("Select a paint color", selection: $selection) {
                                    ForEach(colors, id: \.self) {
                                        Text($0)
                                    }
                                }
                    TextField("Note about Range of Motion for Patient", text: $note
                    ).frame(width:300, height:50).cornerRadius(10).background(Color.gray)
                    
                    TextField("Note about Strength Improvement for Patient", text: $note
                    ).frame(width:300, height:50).cornerRadius(10).background(Color.gray)
                    Text("Assigned Exercises: ").bold()
                    Text("Lower Body Stretching \nUpper Body Strengthening \nBalance Training")
                        .multilineTextAlignment(.center)
                    
                    Text("Rehabilition Goals: ").bold().padding(.top, 13.0)
                    Text(" Enhance balance \n Increase muscle strength \n Improve flexibility")
                        .multilineTextAlignment(.center)
                    
                    VStack {
                        Text("Exercises to assign: ").bold().padding(.vertical, 16.0)
                        Button("Warrior Pose"){
                        }.foregroundColor(.black).frame(width:75, height:50).background(Color.white).cornerRadius(10).padding([.leading], -127.0)
                        
                        Button("Tree Pose"){
                        }.foregroundColor(.black).frame(width:75, height:50).background(Color.white).cornerRadius(10).padding(.top, -60.0)
                        Button("Cow Pose"){
                        }.foregroundColor(.black).frame(width:75, height:50).background(Color.white).cornerRadius(10).padding(.leading, -1.0)
                        Button("Mountain Pose"){
                        }.foregroundColor(.black).frame(width:75, height:50).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: -125, leading: 50, bottom: 0, trailing: -500))
                        
                        
                        
                        
                    }
                    
                }
            }
            .navigationBarHidden(true)
        }
            
    }
}

struct PatientDash_Previews: PreviewProvider {
    static var previews: some View {
        PatientDash()
    }
}
