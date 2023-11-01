//
//  PatientDash.swift
//  therapose23
//
//  Created by Twisha Patel on 10/31/23.
//

import Foundation
import SwiftUI

struct DoctorDash: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.blue.ignoresSafeArea()
                Circle().scale(1.9).foregroundColor(.white.opacity(0.15))
                
                VStack {
        
                    Button("Patient Dashboard"){
                    }.font(.largeTitle).bold().foregroundColor(.black).frame(width:300,height:50).background(Color.white).cornerRadius(10).padding(.vertical, 52.0)
                    
                    Text("Patient Name: Jack \n     Patient Age: 37 ").bold().padding(.bottom)
                    Text("Range of Motion:").bold()
                    Text("Joint Flexibility: Increased by 15% on average across targeted joints.\nMobility Assessment: Improved range of motion observed in upper body movements.\n").multilineTextAlignment(.center)
                        .padding(.horizontal).font(.subheadline)
                    
        
                        
                    Text("Strength Improvements:").bold()
                    Text("Muscle Endurance: Enhanced by 20% in upper and lower body muscle groups.\nCore Strength: Notable improvement in core muscle strength and stability.")
                        .multilineTextAlignment(.center)
                            .padding(.horizontal).font(.subheadline)
                        
                    Image("Image").resizable()
                        
                    
                }
            }
            .navigationBarHidden(true)
        }
            
    }
}

struct DoctorDash_Previews: PreviewProvider {
    static var previews: some View {
        DoctorDash()
    }
}
